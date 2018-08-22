<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\User;
use App\Contact;
use DB;

/**
 * Class that control CRUD funcionality for contacts
 */
class ContactController extends Controller
{


        public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a list of contacts from the current user.
     */
    public function index()
    {
        $contacts = User::find(Auth::id())->contacts;
        return view('contacts.index')->with('contacts',$contacts);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('contacts.create');
    }

    /**
     * Save a contact for a user.
     */
    public function store(Request $request)
    {
        //
        $this->validate($request,[
            'name'=>'required',
            'address'=>'required',
            'postcode'=>'nullable',
            'telephone'=>'numeric',
            'email'=>'nullable|email',
            'dob'=>'nullable'
            ]);

        $contact = new Contact;
        $contact->user_id = Auth::id();
        $contact->name = $request->name;
        $contact->address = $request->address;
        $contact->postcode = $request->postcode;
        $contact->telephone = $request->telephone;
        $contact->email = $request->email;
        $contact->dob = $request->dob;
        $contact->save();

        return redirect('contacts')->with('success','Contact Created');
    }



    /**
     * Edit a contact for the user.
     */
    public function edit($id)
    {
        //
        $contact = Contact::find($id);
        return view('contacts/edit',compact('contact'));
    }

    /**
     * Update a contact for a user.
     */
    public function update(Request $request, $id)
    {
        //
        $this->validate($request,[
            'name'=>'required',
            'address'=>'required',
            'postcode'=>'nullable',
            'telephone'=>'nullable',
            'email'=>'nullable',
            'dob'=>'nullable'
            ]);

        $contact = Contact::find($id);
        $contact->name = $request->name;
        $contact->address = $request->address;
        $contact->postcode = $request->postcode;
        $contact->telephone = $request->telephone;
        $contact->email = $request->email;
        $contact->dob = $request->dob;
        $contact->save();
        return redirect('contacts')->with('success','Contact Updated');
    }

    /**
     * Delete the contact for the user.
     */
    public function destroy($id)
    {
        //
        $contact = Contact::find($id);
        $contact->delete();
        return redirect('contacts')->with('success','Contact Deleted');
    }

    /**
     * Show a list of contacts at the search for a specific user.
     */
    public function search(Request $request){
        $query = $request->input('query');
        $contacts = Contact::where('name','LIKE',$query.'%')->where('user_id',Auth::id())->get();                              
        return view('contacts.search_results')->with('contacts',$contacts);;
    }
}
