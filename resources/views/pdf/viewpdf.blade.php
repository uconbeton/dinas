<style>
    .tdr{
        border:solid 1px #000;
        background:blueviolet;
        color:#fff;
        font-size:13px;
        padding:5px;
    }
    .tdrs{
        border:solid 1px #000;
        padding:5px;
        font-size:13px;
      
    }
</style>

<table width="100%" border="1" style="border-collapse:collapse">
    <tr>
        <td width="20%"></td>
        <td align="center"><h3>DINAS PENANAMAN MODAL DAN PELAYANAN SATU PINTU<br><i>Laporan Hasil Survey</i></h3></td>
    </tr>
</table><br>
<table width="100%" border="0" style="border-collapse:collapse">
    <tr>
      <td class="tdr">Id</td>
      <td class="tdr">Unsur</td>
      <td class="tdr">Nilai Unsur</td>
      <td class="tdr">NRR/Unsur</td>
      <td class="tdr">NRR Tertimbang</td>
      <td class="tdr">Mutu Pelayanan</td>
      <td class="tdr">Persen</td>
    </tr>
    @foreach($unsur as $unsur)
        <tr>
          <td class="tdrs">{{$unsur->id}}</td>
          <td class="tdrs">{{$unsur->nama}}</td>
          <td class="tdrs">{{$total->shift()['nilai']}}</td>
          <td class="tdrs">{{$nrr->shift()['nrr']}}</td>
          <td class="tdrs">{{$nrrtimbang->shift()['nrr']}}</td>
          <td class="tdrs"></td>
          <td class="tdrs"></td>
        </tr>
    @endforeach
    <tr>
        <td class="tdrs" colspan="4">Total</td>
        <td class="tdrs">{{$ratarata}}</td>
        <td class="tdrs"></td>
        <td class="tdrs"></td>
    </tr>
    <tr>
        <td class="tdrs" colspan="4">IKM UNIT PELAYANAN ({{$ratarata}} x 25)</td>
        <td class="tdrs">{{$totratarata}}</td>
        <td class="tdrs">
          @if($totratarata>=40)
              C (Kurang Baik)
          @elseif($totratarata>=50)
              B (Baik)
          @elseif($totratarata>=80)
              A (Sangat Baik)
          @else
              D (Tidak Baik)
          @endif

        </td>
        <td class="tdrs"></td>
      </tr>
  </table>