//<continuation number="60">
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


scene dm5420.nss_MAIN
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
	$GameName = "dm5430.nss";

}


scene dm5420.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	SoundPlay("@dm008",0,450,true);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 400, null, true);

	CreateColorSPadd("�G�F��", 5000, "WHITE");
	Wait(300);

	CreateSE("SE01","se����_�h�A���]����_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 200, null, true);

	Wait(50);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE02","se�l��_����_����03����");
	MusicStart("SE02",1000,700,0,700,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",1000,700,0,700,null,false);

//���΂��΂��ƍg���������������Ă��鉹

//�e�F�ȉ��o���Ȃ������ǂ��Ǝv���܂����̂ŗ����G����
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/2000010a02">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
A familiar voice dimly reaches my ears&.

That voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/2000020a05">
"Morphine&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/2000030a03">
"Keep it down&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/2000040a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_angry");
	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_think");

	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/2000050b09">
"Oh&, man&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_think");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/2000060b04">
"&.&.&.Some pests got in&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,800,null,false);
	SetPan("SE01", 0, -1000, Dxl3);
	Wait(150);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,800,null,false);
	SetPan("SE02", 0, 1000, Dxl3);
	DeleteAllSt(500,true);

	Wait(300);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Without the energy to make sure of what's going on&.&.&.

I barely hold onto my consciousness&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm5430.nss"]

}
