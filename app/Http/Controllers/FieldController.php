<?php

namespace App\Http\Controllers;

use App\Http\Requests\FieldRequest;
use App\Models\Field;
use Illuminate\Http\Request;

class FieldController extends Controller
{
    public function index() {
        $fields = Field::get();

        return view('fields.index', compact('fields'));
    }

    public function create() {
        return view('fields.create');
    }

    public function store(FieldRequest $request) {
        Field::create($request->all());

        $this->flashMessage($request, 'Field has been created', 'success');

        return redirect()->route('home');
    }

    public function edit($id) {
        $field = Field::find($id);

        return view('fields.edit', compact('field'));
    }

    public function update($id, FieldRequest $request) {
        $input = $request->only('name', 'type', 'value');

        $field = Field::find($id);
        $field->update($input);

        $this->flashMessage($request, 'Field has been updated', 'success');

        return redirect()->route('fields.index');
    }

    public function destroy($id, Request $request) {
        Field::find($id)->delete();

        $this->flashMessage($request, 'Field has been deleted', 'success');

        return redirect()->route('fields.index');
    }

    public function getType(Request $request) {
        if($request->ajax()) {
            if($request->id) {
                $field = Field::find($request->id);
            } else {
                $field = null;
            }

            switch ($request->type) {
                case 'input':
                    $view = view('fields.types.input', compact('field'));
                    break;
                case 'select':
                    $view = view('fields.types.select', compact('field'));
                    break;
                case 'multiple':
                    $view = view('fields.types.multiple', compact('field'));
                    break;
                case 'date':
                    $view = view('fields.types.date', compact('field'));
                    break;
                default :
                    $view = view('fields.types.input', compact('field'));
            }

            return response($view);
        }
    }
}
