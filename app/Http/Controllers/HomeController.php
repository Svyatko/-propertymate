<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index() {
        $last_contacts = DB::table('contacts')
            ->whereNull('contacts.deleted_at')
            ->whereNull('docs.deleted_at')
            ->leftJoin('docs', 'contacts.id', '=', 'docs.contact_id')
            ->select(
                'docs.contact_id',
                DB::raw("CONCAT(contacts.surname, ' ', contacts.name) as full_name"),
                'docs.id as doc_id',
                'docs.number as doc_number',
                'docs.created_at as doc_created_at'
                )
            ->paginate(10);

        return view('welcome', compact('last_contacts'));
    }
}
