package com.Light.Notes.Miscs;

import java.util.ArrayList;

import com.Light.Notes.Listactivity;
import com.Light.Notes.NotesListAdapter;
import com.Light.Notes.Data.ImapNotes2Account;
import com.Light.Notes.Data.NotesDb;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.SimpleAdapter;
import android.widget.Toast;

public class SyncThread extends AsyncTask<Object, Void, Boolean> {
    NotesListAdapter adapter;
    ArrayList<OneNote> notesList;
    NotesDb storedNotes;
    boolean bool_to_return;
    ImapNotes2Result res = new ImapNotes2Result();
    Context ctx;
    private static final String TAG = "SyncThread";
    
    @Override
    protected Boolean doInBackground(Object... stuffs) {
        String username = null;
        String password = null;
        String server = null;
        String portnum = null;
        String security = null;
        String usesticky = null;
        this.adapter = ((NotesListAdapter)stuffs[3]);
        this.notesList = ((ArrayList<OneNote>)stuffs[2]);
        this.storedNotes = ((NotesDb)stuffs[5]);
        this.ctx = (Context)stuffs[6];
        username = ((ImapNotes2Account)stuffs[1]).GetUsername();
        password = ((ImapNotes2Account)stuffs[1]).GetPassword();
        server = ((ImapNotes2Account)stuffs[1]).GetServer();
        portnum = ((ImapNotes2Account)stuffs[1]).GetPortnum();
        security = ((ImapNotes2Account)stuffs[1]).GetSecurity();
        usesticky = ((ImapNotes2Account)stuffs[1]).GetUsesticky();

        
        if (this.storedNotes == null) this.storedNotes = new NotesDb(this.ctx);
        this.storedNotes.OpenDb();
        this.storedNotes.GetStoredNotes(this.notesList, Listactivity.imapNotes2Account.GetAccountname());
        this.storedNotes.CloseDb();
        ((ProgressDialog)stuffs[4]).dismiss();
        return true;
    }
    
    protected void onPostExecute(Boolean result){
        if(result){
            this.adapter.notifyDataSetChanged();
        }
    }
}
