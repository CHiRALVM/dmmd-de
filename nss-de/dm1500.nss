//<continuation number="360">
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


scene dm1500.nss_MAIN
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

	//���������t�@�C���܂Ōp��
	Request("@EFWIN/SE01", Lock);
	Request("@EFWIN/��������", Lock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1510.nss";

$HALevel=1;

}


scene dm1500.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


//�������u���o�F�|��A���[���A�����ځv
//�����A���[�����苿���A�����S�̂̏Ɩ����Ԃ��Ȃ�


//�������u���o�F�^���[�|��A�Ƃ肠�����̉�����v
//�����������A�ƃ^���[���h��n�߂�
	CreateSE("SE01","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 100);

//	dm3520RED(500);
	CreateColorEXmul("�Gdm3520red", 500, RED);
	Fade("�Gdm3520red", 300, 600, null, true);

	Shake("�G��", 300, 10, 60, 0, 0, 1000, null, true);

	CreateSE("SE11","se����_���]�^���[_�n��01L");//�������u�r�d�Fse����_���]�^���[_�n��01L�v
	Delete("�G��");
	MusicStart("SE11",0,700,0,1000,null,true);
	dm1500ShakeLoop("�G�V�F�C�N","bg304091_5_���]�^���[���z�[��",400,1);

/*=============================================
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���������z
<voice name="��������" class="��������" src="voice/dm15/0000010e14">
"A state of emergency has been declared&. Please exit the
 building immediately&. I repeat&, a state of emergency
 has been declared&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
=============================================*/
/*
*/

//�������u���F�Ȃ炵���ς��ƌ܌������̂œK�Ƀ{�����[���𗎂Ƃ��ĉ������v
	CreateSE("@EFWIN/SE01","se����_���]�^���[_�A���[��01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,700,0,1000,null,true);

//�������u���F�Ȃ炵���ς��ƌ܌������̂œK�Ƀ{�����[���𗎂Ƃ��ĉ������v
	CreateVOICEEX("@EFWIN/��������","dm15/0000010e14","��������");
	Request("@EFWIN/��������", Lock);
	MusicStart("@EFWIN/��������",0,1500,0,1000,null,true);
	$CautionAlarm=true;
	Wait(1000);
	WaitKey(1000);

	Fw("fw�g��_�o�[�T�N���C_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000020a02">
"A state of emergency&.&.&.!?"

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/0000030e47">
"Urgh&.&.&. Wh-What&.&.&.!?"

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/0000040e48">
"H-Hey that sounds bad&, man!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
The fallen Beni-Shigure members wake up in a panic at the 
announcement&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/0000050e48">
"I-Is the tower gonna collapse!? Koujaku-san&, Aoba-san&,
 let's get out of here fast!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SE01", 10000, 300, null);
	SetVolumeEX("@EFWIN/��������", 10000, 700, null);

	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000060a02">
"Yeah&. Aoba&, are you okay? Grab onto me&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000070a01">
"&.&.&.I'm fine&."

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_angry4");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000080a02">
"Ah&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Koujaku gives me his shoulder and looks at me with a 
puzzled look&.

My head still hurts and the nausea hasn't passed&.&.&.

I think to myself that it's no use trying to shake it off&.

I still can hear the sound of that voice dying out&.

Keeping my vision in one place&.&.&. is painful&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000090a01">
"I'm fine&. But&, you guys&.&.&."

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_angry4");
	FadeSt("C",0,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000100a02">
"&.&.&.What are you going on about?"

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000110a01">
"My power&, like this&.&.&. might be bad&. I might&.&.&.
 lose control&."

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_angry3");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000120a02">
"With Scrap?"

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000130a01">
"Yeah&.&.&. I might hurt you guys&.&.&. and everyone else&.&.&.
 so&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_angry4");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000140a02">
"&.&.&.Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	CreateSE("SE01","se�l��_����_�͂�01");//�������u�r�d�Fse�l��_����_�͂�01�v

	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_angry4");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Koujaku lifts me up by my collar and looks into my eyes&.
His eyes are breathtakingly serious&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_angry3");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000150a02">
"Look into my eyes&, Aoba&. Don't pull this right now&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000160a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000170a02">
"I don't know what's going on with you right now&, but
 whatever it is&, it isn't good&. I'm not going to leave you
 here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000180a02">
"You brought me back with that power&. I'm here because you
 broke through all the things holding me down back then&."

{	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_angry4");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000190a02">
"So I don't think it's much of a power to be afraid of now&. Losing control? I'll just stop it if it even comes to
 that&."

{	Fw("fw���t_�ʏ�_shock3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000200a01">
"Koujaku&.&.&."

{	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_shout2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000210a02">
"So&, come on and get up&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,600,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0058]
Koujaku forcibly pulls my arm over his shoulder and holds  me up by my torso&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_cool2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0059]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000220a02">
"Weren't you the one who told me not to go off for selfish
 reasons in the first place? Now&, I'll take you with me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000230a02">
"You can have the responsibility of calling me back&, if you want&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku looks at me with a firm grin&.

I sort of feel out of place right now&.&.&.

After all this time&, I still see him as my hero&.

A warm feeling overflows in my chest&, and I can feel my 
headache soften&.

My mind flickers and his figure&.&.&. feels as if it's 
getting farther away&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

$HALevel=1;

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_cool2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000240a02">
"Hold on tight&. Let's go&."

{	Fw("fw���t_�ʏ�_happy");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000250a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304102_5_���]�^���[���z�[���A���O����");
	FadeBG(0,true);
	dm1500ShakeLoop("�G�V�F�C�N","bg304102_5_���]�^���[���z�[���A���O����",400,2);

	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
While I'm holding onto Koujaku&, we run to the door out of 
the shaking room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�o�[�T�N���C_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000260a02">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Koujaku has a quizzical look on his face&, and turns around&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000270a01">
"Whats's wrong?"

{	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_think");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000280a02">
"Nothing&. I just felt like someone was watching us&.&.&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/0000290a01">
"Huh? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);
	dm1500ShakeLoop("�G�V�F�C�N","bg304091_5_���]�^���[���z�[��",400,2);

//�������u�m�F�F�����ł̐l�e���ĒN��H�v
//���ʏ�̃Z�C�i���ł͂Ȃ������j�ł��肢���܂�
	CreateTextureEX("�G�����G", 700, Center, InBottom, "cg/st/st�Z�C_�ʏ�_serious.png");
	Move("�G�����G", 0, @0, @60, null, true);
	Fade("�G�����G", 0, 400, null, true);
	Fade("�G�����G", 300, 0, null, false);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_0", false);
	Wait(100);
	DrawDelete("�G�����G", 50, 100, null, "effect_01_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I follow Koujaku's line of sight&, and think I saw 
something shaped like a person for a second&.

Just now&, that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���܂��܂��h�ꂪ�Ђǂ��Ȃ�
	CreateSE("SE01","se����_���]�^���[_�n����01");
	MusicStart("SE01",0,450,0,1000,null,false);

	$dm1500BG_SHAKEP=4;

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/0000300e47">
"Isn't the floor crumbling!?"

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/0000310e48">
"Oh&, shit! Koujaku-san&, Wh-Wh-What do we do!?"

{	Fw("fw�g��_�o�[�T�N���C_shout2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000320a02">
"Don't just stand there confused!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Koujaku lets out a roar&, and all the timid members have a 
shocked look on their face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw�g��_�o�[�T�N���C_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000330a02">
"Keep yourself together for Pete's sake&, you're a Beni-
 Shigure member!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/0000340ex">
"Yessir!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//������
//�y�g�������o�[�`�z
//<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/0000340e47">
//�u���E�I�v
//������
//�y�g�������o�[�a�z
//<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/0000350e48">
//�u���E�I�v



	Fw("fw�g��_�o�[�T�N���C_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/0000360a02">
"All right&, let's make our escape!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
We run out into the hallway&, the floor jolting and 
rumbling beneath us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se�l��_����_����03����L");
//	MusicStart("SE01",0,700,0,1000,null,true);
//	Wait(500);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

//	SetVolumeEX("SE01", 1000, 0, null);

//���F�߂���댯
	$dm1500_SE11=true;
	Request("SE11",Lock);

	Wait(500);

//�����t�@�C��["dm1510.nss"]

}
