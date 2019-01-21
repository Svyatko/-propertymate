<label for="value" class="form-label form-label--required">Value</label>
@if($field)
    <input id="value" class="form-control" name="value" value="{{ old('value', $field->value) }}">
@else
    <input id="value" class="form-control" name="value" value="{{ old('value') }}">
@endif
@if($errors->has('value'))
    <div class="alert alert-danger mt-3">
        {{ $errors->first('value') }}
    </div>
@endif