package com.ub.order;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonWriter;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chat")
public class ChatroomServerEndpoint {
	static Set<Session> chatroomUsers=Collections.synchronizedSet(new HashSet<Session>());
	@OnOpen
	public void handleOpen(Session userSession){
		chatroomUsers.add(userSession);
	}
	@OnMessage
	public void handleMessage(String message,Session userSession)throws IOException{
		String username=(String)userSession.getUserProperties().get("username");
		String [] users=message.split(":");
		if(username==null){
			userSession.getUserProperties().put("username",users[2]);
			userSession.getBasicRemote().sendText(buildJsonData("System","you are now connected as "+users[2]));
		}else{
			Iterator<Session> iterator=chatroomUsers.iterator();
			while(iterator.hasNext()){
				Session temp=iterator.next();
				String sendTo=(String)temp.getUserProperties().get("username");
				if(sendTo.equals(users[0])){
					temp.getBasicRemote().sendText(buildJsonData(users[2],users[1]));
					userSession.getBasicRemote().sendText(buildJsonData(users[2],users[1]));
				}
			}
		}
	}
	@OnClose
	public void handleClose(Session userSession){
		chatroomUsers.remove(userSession);
	}
	public String buildJsonData(String username,String message){
		JsonObject jsonObject=Json.createObjectBuilder().add("message",username+":"+message).build();
		StringWriter stringWriter=new StringWriter();
		try(JsonWriter jsonWriter=Json.createWriter(stringWriter)){jsonWriter.write(jsonObject);}
		return stringWriter.toString();
	}
}