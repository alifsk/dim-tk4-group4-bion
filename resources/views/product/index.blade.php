@extends('layouts.app')

@section('content')
<div class="section section-login">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card card-dashboard bg-white">
                    <div class="card-body">
                        <h1>Manajemen Data Barang</h1>
                        <a href="{{ route('product.create') }}" class="btn btn-info text-white mt-2 mb-3">
                            <i class="bx bx-plus"></i>Tambah Data
                        </a>
                        <div class="table-responsive">
                            <table class="table table-admin table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nama Barang</th>
                                        <th scope="col">Keterangan</th>
                                        <th scope="col">Nama Pengguna</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($data as $product)
                                    <tr>
                                        <th scope="row">{{ $product->idBarang }}</th>
                                        <td>{{ $product->namaBarang }}</td>
                                        <td>{{ $product->keterangan }}</td>
                                        <td>{{ $product->namaPengguna }}</td>
                                        <td>
                                            <a href="{{ route('product.show', $product->idBarang) }}" class="btn btn-sm btn-secondary text-white"><i class='bx bx-show' ></i></a>
                                            <a href="{{ route('product.edit', $product->idBarang) }}" class="btn btn-sm btn-warning text-white"><i class='bx bxs-pencil'></i></a>
                                            <button class="btn btn-sm btn-danger text-white" data-bs-toggle="modal" data-bs-target="#modal_delete_{{ $product->idBarang }}"><i class='bx bxs-trash' ></i></button>
                                            <div class="modal fade" id="modal_delete_{{ $product->idBarang }}" tabindex="-1" aria-labelledby="modal_delete_label_{{ $product->idBarang }}" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="modal_delete_label_{{ $product->idBarang }}">Confirmation</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            Are you sure want to delete this data?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                            <a href="{{ route('product.delete', ['id' => $product->idBarang]) }}" type="button" class="btn btn-success">Confirm</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
