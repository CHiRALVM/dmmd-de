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


scene dm2520.nss_MAIN
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
	$GameName = "dm2530.nss";

}


scene dm2520.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	CreateSE("SE11","se����_���]�^���[_�n��01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateSE("SE22","se����_���]�^���[_�A���[��01L");
	MusicStart("SE22",0,300,0,1000,null,true);
	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);

//	CreateColorSPover("�G�F��", 500, "RED");

	CreateColorEXmul("�G�F��", 500, RED);
	Fade("�G�F��", 300, 600, null, true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304053_5_���]�^���[�����G���A�L��03",400,2);

	CreateSE("SE�n��","se����_���]�^���[_�n��01L");
	MusicStart("SE�n��",3000,500,0,1000,null,true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,500,0,800,null,false);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,500,0,1000,null,false);

	FadeDelete("��w�i", 1000, null, true);

//���Ó]

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We came out of the hall&, and walked down the hallway while paying attention to the trembling of the tower&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE�n��", 3000, 300, null);

	SetVolumeEX("SE01", 2000, 0, null);
	SetVolumeEX("SE02", 2000, 0, null);

	FadeDelete("�G�F��", 1000, null, true);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000010a03">
"Are you feeling okay? You don't look too good there&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000020a01">
"Yeah&, I'm feeling fine&. &.&.&.But isn't this going to
 collapse?"

{
	Fw("fw�m�C�Y_�ʏ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000030a03">
"Probably&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000040a01">
"Did you start this?"

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000050a03">
"No&, it wasn't me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000060a01">
"Then who&.&.&."

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000070a03">
"Who knows&.&.&. Maybe it's a miracle&."

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000080a01">
"Even if we were involved&, a miracle&, huh?"

{
	Fw("fw�m�C�Y_�ʏ�_pride");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000090a03">
"That's why we're running away like this&, right?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreateTextureEX("�G�w�i100", 100, -822, -321, "cg/bg/l/bg304051_5_���]�^���[�����G���A�L��01_l.jpg");
	Move("�G�w�i100", 500, -1022, -321, Dxl3, false);
	Fade("�G�w�i100", 500, 1000, null, true);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
We walk together&, supporting each other&, and see an 
elevator at the end of the hallway&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000100a01">
"Hey&, over there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
We approached the elevator and tried pushing the panel 
button&.

{
	CreateSE("SE01","se����_�h�A���]����_���J��01");//�������u�r�d�Fse����_�h�A���]����_���J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The door opened&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000110a03">
"Is it an emergency elevator? Let's go down with it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 990);

	dm1500ShakeLoop("�G�V�F�C�N","bg304072_5_���]�^���[�G���x�[�^�[",400,2);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);
	Delete("�G�w�i*");
//	Delete("�G�F��");

	SetVolumeEX("SE*", 2000, 100, null);
	SetVolumeEX("����*", 2000, 300, null);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
We stepped inside and pushed the panel button of the first floor&.

{
	CreateSE("SE12","se����_�G���x�[�^_�쓮01L");//�������u�r�d�Fse����_�G���x�[�^_�쓮01L�v
	MusicStart("SE12",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 990);

	dm1500ShakeLoop("�G�V�F�C�N","l/bg304072_5_���]�^���[�G���x�[�^�[_l",400,1);

	CreateTextureSP("�G�w�i100", 100, -944, -355, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	FadeDelete("�G��", 500, null, true);

}
While being shaken by the unstable vibration of the tower&, the elevator began to descend&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/2000120a01">
"&.&.&.I hope it won't stop in the middle&."

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/2000130a03">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetFrequency("SE12", 1000, 100, null);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(300);
	Delete("SE12");
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("����*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Despite our fear&, the elevator stopped safely at the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2530.nss"]

}
