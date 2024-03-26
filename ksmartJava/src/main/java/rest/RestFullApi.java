package main.java.rest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

public class RestFullApi {
	public void getRestData() {
		URL url = null;
		String readLine = null;
		StringBuilder buffer = null;
		BufferedReader bufferedReader = null;
		BufferedWriter bufferedWriter = null;
		HttpURLConnection urlConnection = null;

		int connTimeout = 5000;
		int readTimeout = 3000;

		String apiUrl = "https://apis.data.go.kr/1360000/BeachInfoservice/getWhBuoyBeach?serviceKey=NmuFdnggsQuJ6G4f8u39rhz2A6a%252FEe9uJhvSadb2YL7MjpOZnuicxKm7%252FILNLQrLpnDixuWlILcAwIU5l2asVw%253D%253D&pageNo=1&dataType=json&beach_num=1&searchTime=202403251600";
		// 각자 상황에 맞는 IP & url 사용

		try
		{
			url = new URL(apiUrl);
			urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setRequestMethod("GET");
			urlConnection.setConnectTimeout(connTimeout);
			urlConnection.setReadTimeout(readTimeout);
			urlConnection.setRequestProperty("Accept", "application/json;");

			buffer = new StringBuilder();
			if (urlConnection.getResponseCode() == HttpURLConnection.HTTP_OK) {
				bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(), "UTF-8"));
				while ((readLine = bufferedReader.readLine()) != null) {
					buffer.append(readLine).append("\n");
				}
				
				System.out.println("결과 : "+buffer.toString());
				
			} else {
				buffer.append("code : ");
				buffer.append(urlConnection.getResponseCode()).append("\n");
				buffer.append("message : ");
				buffer.append(urlConnection.getResponseMessage()).append("\n");
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			try {
				if (bufferedWriter != null) {
					bufferedWriter.close();
				}
				if (bufferedReader != null) {
					bufferedReader.close();
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
//		System.out.println("결과 : "+buffer.toString());
	}

}

