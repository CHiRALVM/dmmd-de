//<continuation number="130">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0161.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0170.nss";

}


scene dm0161.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101031_1_���Z����ʂ藠�H�n�g���J");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


//==============================================
//���u�U�蕥���v��I�񂾏ꍇ
//==============================================

	SetVolumeEX("@dm*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Hoer auf&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 3, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6100010e49">
"Kyah!"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6100020a01">
"Ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.Oh nein&. 
Ich habe es getan&.

Ich wehre die Hand der Frau reflexartig ab&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6100030e49">
"Owwwww&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6100040e50">
"Hey&, was machst du da!? Das war gemein!"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6100050a01">
"&.&.&.Tut mir Leid&."

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6100060e50">
"Du hast deine Hand gegen eine Frau erhoben&, denkst du ein 'Tut mir Leid' 
 wird das reparieren!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	St("C",740, @0,@0,"st�g��_�ʏ�_sad2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6100070a02">
"Hey hey hey&, warte eine Sekunde&. Ich entschuldige mich fuer ihn&. 
 Es tut mir Leid? So etwa&."

Koujaku tritt zwischen mich und die Frau and haelt die Hand der Frau&,
welche ich geschlagen habe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6100080e50">
"Aber&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6100090a02">
"Eigentlich ist der Typ noch nicht oft mit Frauen ausgegangen&."

{
	St("C",740, @0,@0,"st�g��_�ʏ�_smile");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6100100a02">
"Deshalb weiss er nicht wie er sich in der Naehe von so schoenen Damen verhalten soll&, richtig?"

Koujaku schaut mich so an als wuerde er eine Bestaetigung verlangen&.
Seine Augen sagen mir das ich mitspielen soll&.

{
	St("C",740, @0,@0,"st�g��_�ʏ�_sad2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6100110a02">
"Koenntest du Gnade haben und mir vergeben?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6100120e49">
"Tja&, wenn das so ist&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6100130e50">
"Das ist richtig&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Die Frau schaut mich bemitleidend an&.

Es war etwas irritierend&, aber freiheraus&, es hat mich gerettet&.

Oder so&.&.&. aber ich wurde gerade eben von Kojaku gerettet&.

Er weiss&, dass ich es hasse wenn andere Leute mein Haar beruehren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0170.nss"]

}
