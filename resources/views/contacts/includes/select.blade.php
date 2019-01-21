<div class="form-group">
    <label>{{ $field->name }}</label>
    <select name="value[{{ $field->id }}]" class="form-control">
        <option disabled selected>Choose one</option>
        @foreach(preg_split('/\n|\r\n?/', $field->value) as $stirng)
            <option>{{ $stirng }}</option>
        @endforeach
    </select>
    @if($errors->has('value'))
        <div class="alert alert-danger mt-3">
            {{ $errors->first('value') }}
        </div>
    @endif
</div>