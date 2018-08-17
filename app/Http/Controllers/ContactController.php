<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\User;
use App\Contact;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contacts = Contact::all();
        return view('contacts.index',compact('contacts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('contacts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request,[
            'name'=>'required',
            'address'=>'required',
            'postcode'=>'required',
            'telephone'=>'required',
            'email'=>'required',
            'dob'=>'required'
        ]);

        $contact = new Contact;
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
     * Display the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $contact = Contact::find($id);
        return view('contacts/edit',compact('contact'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $this->validate($request,[
            'name'=>'required',
            'address'=>'required',
            'postcode'=>'required',
            'telephone'=>'required',
            'email'=>'required',
            'dob'=>'required'
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
     * Remove the specified resource from storage.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $contact = Contact::find($id);
        $contact->delete();
        return redirect('contacts')->with('succes','Contact Deleted');
    }
}
