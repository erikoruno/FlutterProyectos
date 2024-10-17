package com.example.app6_components_app_2024

import android.content.pm.PackageManager
import android.os.Bundle
import android.util.Base64
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException



class MainActivity: FlutterActivity(){

    override fun onCreate(savedInstanceState: Bundle) {
     super.onCreate(savedInstanceState);
                
     try {
         val info = packageManager.getPackageInfo(
                           "com.livcode.firetask",                  //Insert your own package name.
                            PackageManager.GET_SIGNATURES);
         for (signature in info.signatures) {
             val md = MessageDigest.getInstance("SHA");
             md.update(signature.toByteArray());
             Log.d("KeyHash:", Base64.encodeToString(md.digest(), Base64.DEFAULT));
             }
          } catch (e: PackageManager.NameNotFoundException) {
                  
          } catch (e: NoSuchAlgorithmException) {
                  
          }
}
