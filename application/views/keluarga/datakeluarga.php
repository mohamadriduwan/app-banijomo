<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><?= $title; ?></h1>
    <hr>

    <?= form_error('nisn', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
    <?= $this->session->flashdata('message'); ?>

    <a href="" class="btn btn-primary btn-icon-split mb-3 mr-2" data-toggle="modal" data-target="#newRoleModal">
        <span class="icon text-white-50">
            <i class="fas fa-plus"></i>
        </span>
        <span class="text">Add User</span>
    </a>



    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $title; ?></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="200%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama</th>
                            <th>Tempat, Tgl Lahir</th>
                            <th>Pekerjaan</th>
                            <th>Alamat</th>
                            <th>No HP</th>
                            <th>Orang Tua</th>
                            <th>Nama Pasangan</th>
                            <th>Generasi</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1 ?>
                        <?php foreach ($keluarga as $kel) : ?>
                            <?php
                            $pasangan = $this->db->get_where('data_pasangan', ['id_pasangan' => $kel['id']])->result_array();
                            $jumlahpasangan = $this->db->get_where('data_pasangan', ['id_pasangan' => $kel['id']])->num_rows();;
                            if ($kel['dari_generasi'] == 1) {
                                $orangtua = $this->db->get_where('data_keluarga', ['id' => $kel['id_ayah']])->result_array();
                            } else {
                                $orangtua = $this->db->get_where('data_keluarga', ['id' => $kel['id_ibu']])->result_array();
                            }
                            ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $kel['nama']; ?></td>
                                <td><?= $kel['tempat_lahir']; ?>, <?= $kel['tgl_lahir']; ?></td>
                                <td><?= $kel['pekerjaan']; ?></td>
                                <td><?= $kel['alamat']; ?></td>
                                <td><?= $kel['no_hp']; ?></td>
                                <td>
                                    <?php foreach ($orangtua as $ortu) : ?>
                                        <?= $ortu['nama']; ?>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php
                                    if ($jumlahpasangan > 1) : ?>
                                        <ol style="margin-left: -25px;">
                                            <?php foreach ($pasangan as $pas) : ?>
                                                <li>
                                                    <?= $pas['nama_pasangan']; ?><br>
                                                </li>
                                            <?php endforeach; ?>
                                        </ol>
                                    <?php else : ?>
                                        <?php foreach ($pasangan as $pas) : ?>
                                            <?= $pas['nama_pasangan']; ?><br>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </td>
                                <td><?= $kel['generasi']; ?></td>
                                <td>
                                    <a href="#" class="btn btn-info btn-icon-split btn-sm" data-toggle="modal" data-target="#editModal<?= $kel['id']; ?>">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-edit"></i>
                                        </span>
                                        <span class="text">Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-icon-split btn-sm" data-toggle="modal" data-target="#deleteModal<?= $kel['id']; ?>">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash-alt"></i>
                                        </span>
                                        <span class="text">Delete</span>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</div>
<!-- /.container-fluid -->