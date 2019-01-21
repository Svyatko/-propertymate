<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Models\Contact;
use App\Models\Field;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function create() {
        $fields = Field::get();

        return view('contacts.create', compact('fields'));
    }

    public function store(ContactRequest $request) {
        $contact_inp = $request->only('name', 'surname');

        $contact = Contact::create($contact_inp);

        $values = array();
        foreach ($request->value as $key => $value) {
            if(is_array($value)) {
                $values[$key] = ['value' => implode(',', $value)];
            } else {
                $values[$key] = ['value' => $value];
            }
        }

        $contact->fields()->attach($values);

        $this->flashMessage($request, 'Contact has been created', 'success');

        return redirect()->route('home');
    }

    public function show($id) {
        $contact = Contact::find($id);

        return view('contacts.show', compact('contact'));
    }

    public function edit($id) {
        $contact = Contact::find($id);

        return view('contacts.edit', compact('contact'));
    }

    public function update($id, Request $request) {
        $input = $request->only('name', 'type', 'value');
        $contact = Contact::find($id);
        $contact->fields()->create($input);


        return redirect()->route('home');
    }

    public function destroy($id, Request $request) {
        Contact::find($id)->delete();

        $this->flashMessage($request, 'Contact has been deleted', 'success');

        return redirect()->route('home');
    }
}
