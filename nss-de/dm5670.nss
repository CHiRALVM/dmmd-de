//<continuation number="10">
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


scene dm5670.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	$GameName = "dm5680.nss";

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB10=1;//��z�p�t���O�擾

}


scene dm5670.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg210011_2_�\�I�C�ƍ��l");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",0,true);

	CreateTextureSP("�G�w�i2000", 2000, -516, -70, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");

	Delete("��w�i");

	CreatePlainSP("�G��", 5000);

	CreateMask("�G�}�X�N", 2100, 0, 0, "cg/data/slide_04_00_0.png", false); 
	CreateTextureEX("�G�}�X�N/�G���w�i", 2050, -80, -570, "cg/bg/bg209011_2_�\�I���t����O�ό��グ.jpg");
	Zoom("�G�}�X�N/�G���w�i", 0, 1150, 1150, null, true);
	Request("�G�}�X�N/�G���w�i", Smoothing);
	Fade("�G�}�X�N/�G���w�i", 0, 600, null, true);

	CreateSE("SE��","se����_��_��01L");
	MusicStart("SE��",0,500,0,1000,null,true);

	FadeDelete("�G��", 1500, null, true);

	Wait(2500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0009]
I hear the distant sound of bells&, ringing far&, far off 
in the distance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�}�X�N*");
	FadeDelete("�G��", 600, null, true);

	Move("�G�w�i2000", 1000, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i2000", 1000, null, false);

	Wait(1000);

	CreateSE("SE01","se�[��_����_�͔����t����");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 3000, 0, null);

	CreateTextureEX("�G�w�i1000", 1000, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Fade("�G�w�i1000", 2000, 600, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Both of our bodies begin to turn transparent&.

&.&.&.It's time&.

{
	SetVolumeEX("SE��", 3000, 300, null);

	CreateSE("SE02","se�[��_���__����01L");
	MusicStart("SE02",3000,400,0,800,null,true);
}
The scenery&, with the evening sky&, the sandy beach&, and 
the waves&, were all shaking and falling apart little by 
little&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/7000010a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Ren reached out for my hand&. And I reached out for his&. 

{
	CreateSE("SE04","se�l��_����_�@��01");
	MusicStart("SE04",0,600,0,1400,null,false);

	SetVolumeEX("SE04", 150, 0, null);
}
As our hands began to fade away&.&.&. They still held each 
other&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE03","se�[��_���__����01L");
	MusicStart("SE03",3000,500,0,700,null,true);

	CreateTextureEX("�G�w�i5000", 5000, -516, -100, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");
	Move("�G�w�i5000", 1000, -516, -70, Dxl1, false);
	Fade("�G�w�i5000", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
To the ringing of the bells&, the dream world began to 
crumble&.

Until everything turned into rubble&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE0*", 3000, 0, null);
	SetVolumeEX("SE��", 2000, 900, null);

	CreateColorSP("�G�����Q", 10000, "WHITE");
	DrawTransition("�G�����Q", 3000, 0, 1000, 100, Dxl1, "cg/data/circle_02_01_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
And quickly enough&, a white light enveloped us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//��z��
		SetVolumeEX("@SE*", 2000, 0, null);
		ClearFadeAll(1000, true);Wait(2000);
	}else{

	Wait(3000);

	}

//�����t�@�C��["dm5680.nss"]

}
