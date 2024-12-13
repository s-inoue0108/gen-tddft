#!/usr/bin/perl
use strict;
use warnings;

my %atoms = (
  1   => 'H',   # 水素 (Hydrogen)
  2   => 'He',  # ヘリウム (Helium)
  3   => 'Li',  # リチウム (Lithium)
  4   => 'Be',  # ベリリウム (Beryllium)
  5   => 'B',   # ホウ素 (Boron)
  6   => 'C',   # 炭素 (Carbon)
  7   => 'N',   # 窒素 (Nitrogen)
  8   => 'O',   # 酸素 (Oxygen)
  9   => 'F',   # フッ素 (Fluorine)
  10  => 'Ne',  # ネオン (Neon)
  11  => 'Na',  # ナトリウム (Sodium)
  12  => 'Mg',  # マグネシウム (Magnesium)
  13  => 'Al',  # アルミニウム (Aluminum)
  14  => 'Si',  # ケイ素 (Silicon)
  15  => 'P',   # リン (Phosphorus)
  16  => 'S',   # 硫黄 (Sulfur)
  17  => 'Cl',  # 塩素 (Chlorine)
  18  => 'Ar',  # アルゴン (Argon)
  19  => 'K',   # カリウム (Potassium)
  20  => 'Ca',  # カルシウム (Calcium)
  21  => 'Sc',  # スカンジウム (Scandium)
  22  => 'Ti',  # チタン (Titanium)
  23  => 'V',   # バナジウム (Vanadium)
  24  => 'Cr',  # クロム (Chromium)
  25  => 'Mn',  # マンガン (Manganese)
  26  => 'Fe',  # 鉄 (Iron)
  27  => 'Co',  # コバルト (Cobalt)
  28  => 'Ni',  # ニッケル (Nickel)
  29  => 'Cu',  # 銅 (Copper)
  30  => 'Zn',  # 亜鉛 (Zinc)
  31  => 'Ga',  # ガリウム (Gallium)
  32  => 'Ge',  # ゲルマニウム (Germanium)
  33  => 'As',  # ヒ素 (Arsenic)
  34  => 'Se',  # セレン (Selenium)
  35  => 'Br',  # 臭素 (Bromine)
  36  => 'Kr',  # クリプトン (Krypton)
  37  => 'Rb',  # ルビジウム (Rubidium)
  38  => 'Sr',  # ストロンチウム (Strontium)
  39  => 'Y',   # イットリウム (Yttrium)
  40  => 'Zr',  # ジルコニウム (Zirconium)
  41  => 'Nb',  # ニオブ (Niobium)
  42  => 'Mo',  # モリブデン (Molybdenum)
  43  => 'Tc',  # テクネチウム (Technetium)
  44  => 'Ru',  # ルテニウム (Ruthenium)
  45  => 'Rh',  # ロジウム (Rhodium)
  46  => 'Pd',  # パラジウム (Palladium)
  47  => 'Ag',  # 銀 (Silver)
  48  => 'Cd',  # カドミウム (Cadmium)
  49  => 'In',  # インジウム (Indium)
  50  => 'Sn',  # スズ (Tin)
  51  => 'Sb',  # アンチモン (Antimony)
  52  => 'Te',  # テルル (Tellurium)
  53  => 'I',   # ヨウ素 (Iodine)
  54  => 'Xe',  # キセノン (Xenon)
  55  => 'Cs',  # セシウム (Cesium)
  56  => 'Ba',  # バリウム (Barium)
  57  => 'La',  # ランタン (Lanthanum)
  58  => 'Ce',  # セリウム (Cerium)
  59  => 'Pr',  # プラセオジム (Praseodymium)
  60  => 'Nd',  # ネオジム (Neodymium)
  61  => 'Pm',  # プロメチウム (Promethium)
  62  => 'Sm',  # サマリウム (Samarium)
  63  => 'Eu',  # ユウロピウム (Europium)
  64  => 'Gd',  # ガドリニウム (Gadolinium)
  65  => 'Tb',  # テルビウム (Terbium)
  66  => 'Dy',  # ジスプロシウム (Dysprosium)
  67  => 'Ho',  # ホルミウム (Holmium)
  68  => 'Er',  # エルビウム (Erbium)
  69  => 'Tm',  # ツリウム (Thulium)
  70  => 'Yb',  # イッテルビウム (Ytterbium)
  71  => 'Lu',  # ルテチウム (Lutetium)
  72  => 'Hf',  # ハフニウム (Hafnium)
  73  => 'Ta',  # タンタル (Tantalum)
  74  => 'W',   # タングステン (Tungsten)
  75  => 'Re',  # レニウム (Rhenium)
  76  => 'Os',  # オスミウム (Osmium)
  77  => 'Ir',  # イリジウム (Iridium)
  78  => 'Pt',  # 白金 (Platinum)
  79  => 'Au',  # 金 (Gold)
  80  => 'Hg',  # 水銀 (Mercury)
  81  => 'Tl',  # タリウム (Thallium)
  82  => 'Pb',  # 鉛 (Lead)
  83  => 'Bi',  # ビスマス (Bismuth)
  84  => 'Po',  # ポロニウム (Polonium)
  85  => 'At',  # アスタチン (Astatine)
  86  => 'Rn',  # ラドン (Radon)
  87  => 'Fr',  # フランシウム (Francium)
  88  => 'Ra',  # ラジウム (Radium)
  89  => 'Ac',  # アクチニウム (Actinium)
  90  => 'Th',  # トリウム (Thorium)
  91  => 'Pa',  # プロトアクチニウム (Protactinium)
  92  => 'U',   # ウラン (Uranium)
  93  => 'Np',  # ネプツニウム (Neptunium)
  94  => 'Pu',  # プルトニウム (Plutonium)
  95  => 'Am',  # アメリシウム (Americium)
  96  => 'Cm',  # キュリウム (Curium)
  97  => 'Bk',  # バークリウム (Berkelium)
  98  => 'Cf',  # カリフォルニウム (Californium)
  99  => 'Es',  # アインスタイニウム (Einsteinium)
  100 => 'Fm',  # フェルミウム (Fermium)
  101 => 'Md',  # メンデレビウム (Mendelevium)
  102 => 'No',  # ノーベリウム (Nobelium)
  103 => 'Lr',  # ローレンシウム (Lawrencium)
  104 => 'Rf',  # レニウム (Rutherfordium)
  105 => 'Db',  # ドブニウム (Dubnium)
  106 => 'Sg',  # シーボーギウム (Seaborgium)
  107 => 'Bh',  # ボーリウム (Bohrium)
  108 => 'Hs',  # ハッシウム (Hassium)
  109 => 'Mt',  # マイトネリウム (Meitnerium)
  110 => 'Ds',  # ダームスタチウム (Darmstadtium)
  111 => 'Rg',  # レントゲニウム (Roentgenium)
  112 => 'Cn',  # コペルニシウム (Copernicium)
  113 => 'Nh',  # ニホニウム (Nihonium)
  114 => 'Fl',  # フレロビウム (Flerovium)
  115 => 'Mc',  # モスコビウム (Moscovium)
  116 => 'Lv',  # リバモリウム (Livermorium)
  117 => 'Ts',  # テネシン (Tennessine)
  118 => 'Og',  # オガネソン (Oganesson)
);

# ファイル名の取得
my $file = shift or die "Usage: extract <filename>.out\n";

# グローバル変数
my $ln = 0;                  # ファイルの行数
my $is_block = 0;            # 座標の抽出中であることを表すブール変数
my $count = 0;               # スキャン回数
my $coordinate = "";         # Standard orientation の座標を保存
my $stationary_coordinate;   # スキャンごとの最終座標を保存

# メインルーチン
open my $fh, '<', $file or die "Can't open file $file: $!\n";

# アウトプットファイルを1行ずつ読み込む
while (my $line = <$fh>) {
  
  if ($line =~ /Standard orientation/) {
    $ln = $.;
    $is_block = 1;
    print "Standard Orientation Found\n";
  } elsif ($. > $ln + 4 and $is_block == 1) {
    if ($line =~ /-----/) {
      $stationary_coordinate = $coordinate;
      $coordinate = "";
      $ln = $.;
      $is_block = 0;
    } else {
      $coordinate .= "$line";
    }
  } elsif ($line =~ /Optimization completed/) {
    $count++;
    print "Optimized Structure Found\n";
    
    gen_tddft($file, $stationary_coordinate, $count);
  }
}
close $fh;

# サブルーチン
sub processed_coordinate {
  my ($coordinate) = @_;

  my $label_droped_coordinate = join("\n", map {
    # 行をスペースで分割
    my @columns = split(/\s+/, $_);
    
    # ラベル列を drop
    splice(@columns, 1, 1);
    
    # 残りのカラムをスペースで再結合
    join(" ", @columns);

  } split(/\n/, $coordinate));

  my $type_droped_coordinate = join("\n", map {
    # 行をスペースで分割
    my @columns = split(/\s+/, $_);
    
    # タイプ列を drop
    splice(@columns, 2, 1);
    
    # 残りのカラムを空白で再結合
    join(" ", @columns);

  } split(/\n/, $label_droped_coordinate));

  my $number_replaced_coordinate = join("\n", map {
    # 行をスペースで分割
    my @columns = split(/\s+/, $_);
    
    # 原子番号を元素記号に置換
    foreach my $row (@columns) {
      if (exists $atoms{$row}) {
        $row = $atoms{$row};
      }
    }
    
    # 残りのカラムをタブで再結合
    join("\t", @columns);

  } split(/\n/, $type_droped_coordinate));

  # 行ごとに分割して処理
  my @lines = split /\n/, $number_replaced_coordinate;

  # 行頭のタブを除去して、再度\nで結合する
  my $cleaned_coordinate = join("\n", map { s/^\t/ /r } @lines);
  
  return $cleaned_coordinate;
}

sub gen_tddft {
  my ($file, $coordinate, $count) = @_;

  my $tddft_file = $file;
  my $chk_file = $file;
  my $title = $file;

  $tddft_file =~ s/\.[^.]+$/\.$count.tddft.com/;
  $chk_file =~ s/\.[^.]+$/\.$count.tddft.chk/;
  $title =~ s/\.[^.]+$/\ | No.$count/;

  my $new_coordinate = processed_coordinate($coordinate);

  open my $fh, '>', $tddft_file or die "Can't open file $tddft_file: $!\n";

print $fh <<"EOF";
%nprocshared=8
%mem=1GB
%chk=$chk_file
# td=(nstat=10) b3lyp/6-31g(d)

$title

0 1
$new_coordinate

EOF

  close $fh;
}