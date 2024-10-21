package com.Adnan.Conference.Service.Services;

import com.Adnan.Conference.Service.Model.Member;
import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.WriteResult;

import com.google.firebase.cloud.FirestoreClient;
import org.springframework.stereotype.Service;

@Service
public class firebaseService {

    public void create(Member member) {

        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> CAF = dbFirestore.collection("conference").document(member.getEmail()).set(member);

    }





}