//<continuation number="480">
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


scene dm1450scr.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev145�g���ϑz�̑��t=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1460sl.nss";

}


scene dm1450scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 50000, "FFFFFF");
	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);
	St("C",740, @0,@0,"fu�g��_�ʏ�_think2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

	FadeDelete("�G�F��", 1000, null, true);

	Wait(800);

	St("C",740, @0,@0,"fu�g��_�ʏ�_cry");
	FadeSt("C",900,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000010a02">
"&.&.&.&.&. Ngh&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000020a02">
"&.&.&.I&.&.&.What happened?"

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000030a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_sad");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000040a02">
"Aoba! What's wrong? We&.&.&. Were we saved?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000050a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_cry");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000060a02">
"&.&.&.I see&, we're saved&.&.&. so it's over&. &.&.&.That's good&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_think2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000070a02">
"You got into some trouble&, seriously&. Sorry 'bout that&,
 Aoba&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000080a01">
"That's fine&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_cry");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000090a02">
"No&, really&. If you weren't there&, I might've died a long
 time ago&, you know&. The only thing that connects me to
 this world is you&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile3");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000100a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000110a02">
"Really&, thank you&. I owe you one&."

{
	Fw("fw���t_�ʏ�_happy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000120a01">
"Yeah&.&.&. Koujaku&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 1000, null, false);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000130a02">
"!? Heh? H-Hey&, Aoba? You- What are&.&.&. Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateTextureEX("�G�w�i100", 100, Center, Middle, "cg/bg/l/bg304091_5_���]�^���[���z�[��_l.jpg");
	Move("�G�w�i100", 500, @0, @-100, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 300, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000140a02">
"Ouch&. Are you okay? What're you clinging onto me for? If
 you surprised me a bit more&, then I would've fallen right
 off my feet!"

{
	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000150a01">
"&.&.&.That's fine&."

{
	Fw("fw�g��_�ʏ�_cry");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000160a02">
"&.&.&.Huh? What is?"

{
	Fw("fw���t_�ʏ�_happy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000170a01">
"&.&.&.&.&."

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000180a02">
"&.&.&.&.&.Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000190a01">
"Koujaku&.&.&."

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000200a02">
"You&.&.&."

{
	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000210a01">
"You don't have to worry about anything&. I understand
 everything&. I know&. So&.&.&."

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000220a02">
"&.&.&.&.&."

{
	Fw("fw�g��_�ʏ�_cry");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000230a02">
"'S that&.&.&. so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u101", 1101, Center, Middle, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	CreateTextureEX("�G�d�u100", 1100, -1100, -424, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Move("�G�d�u100", 1000, -967, -424, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000240a02">
"It's weird&. I feel so at ease with you&. I'm really calm&.
 It's like everything before this was a lie&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000250a01">
"Yeah&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000260a02">
"&.&.&.Aoba&. Uh&, it might sound weird&.&.&. but can I touch you?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000270a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��16");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u100", 2000, -478, -790, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000280a02">
"&.&.&.Aoba&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000290a01">
"Yeah?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000300a02">
"Aoba&.&.&. can I kiss you?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000310a01">
"That's fine&."

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 500, 0, null);

	Move("�G�d�u100", 500, @0, @30, Dxl1, true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000320a02">
"&.&.&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000330a01">
"&.&.&.Fu&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u101", 1500, -653, -354, Dxl1, false);
	Fade("�G�d�u101", 1500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000340a02">
"&.&.&.Aoba&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000350a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000360a02">
"&.&.&.Can I touch you some more?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000370a01">
"That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000380a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u102", 1102, -555, -624, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Move("�G�d�u102", 1000, -455, -624, Dxl3, false);
	Fade("�G�d�u102", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000390a01">
"That's fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000400a01">
"That's fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000410a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u103", 1103, -767, -424, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Move("�G�d�u103", 1500, -967, -424, Dxl1, false);
	Fade("�G�d�u103", 1500, 1000, null, true);
	Delete("�G�d�u102");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000420a01">
"That's fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000430a01">
"That's fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000440a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u104", 1104, -478, -790, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Move("�G�d�u104", 2000, -781, -373, Dxl1, false);
	Fade("�G�d�u104", 2000, 1000, null, true);
	Delete("�G�d�u103");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000450a01">
"That's fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000460a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���a�f�l�҂����Ǝ~�܂�
	SetVolumeEX("@dm*", 200, 0, null);

	CreateTextureEX("�G�d�u105", 1105, Center, Middle, "cg/ev/ev145�g���ϑz�̑��t.jpg");
	Move("�G�d�u104", 1000, -888, -288, Dxl1, false);
	Fade("�G�d�u105", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/5000470a02">
"Is it really okay?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/5000480a01">
"        "


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm1460sl.nss"]

}
