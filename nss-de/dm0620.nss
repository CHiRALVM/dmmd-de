//<continuation number="850">
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


scene dm0620.nss_MAIN
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
	#ev061�S���W��a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0630.nss";

}


scene dm0620.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102021_5_���}�n����");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�����o�F��ʈÓ]�����̃V�[���őS���W����ev�Ƀm�C�Y�������Ă�^ev�\��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.I don't know how convincing that was&, but a few minutes pass&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G�}�X�N��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�摜", 1000, -1200, -130, "cg/ev/l/ev061�S���W��a_l.jpg");
	FadeDelete("�G��", 100, null, false);

	CreateColorEX("�G�F��", 200, "000000");
	Fade("�G�F��", 200, 300, null, false);
	OpenTateMask("�G�}�X�N��",200, 1300,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Noiz showed up at Heibon&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 200, 0, null, false);
	CloseTateMask("�G�}�X�N��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev061�S���W��a.jpg");
	Fade("�G�d�u100", 500, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Koujaku&, Clear&, Mink&, and Noiz were all here&.

All of these random people just lining up&.&.&.
It's sort of an achievement&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i��", 1000, -950, -80, "cg/ev/l/ev061�S���W��a_l.jpg");
	Move("�G�w�i��", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Noiz coming here made Koujaku even more unpleasant&, but it can't be helped anymore&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i��");
	Delete("�G�d�u100");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
And even after the situation from before&, I still spoke 
bluntly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000010a03">
"Isn't Dry Juice the number one Rib team?"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000020a01">
"Yeah&."

{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000030a03">
"So a lot of people are in it&. So that means there's crew
 all around this entire island&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000040a01">
"I guess so&.&.&."

{	Fw("fw�g��_�ʏ�_cool2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000050a02">
"My team members have been searching too&, but they're not
 coming up with anything&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000060a04">
"I also searched from the rooftop&, but did not find
 anything&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000070a03">
"They must be in some isolated place&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000080a01">
"What do you mean?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000090a03">
"The kind of place nobody's allowed to enter so no one
 comes by on accident&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000100a05">
"That's right&. An information gathering lunatic would
 know&."

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000110a03">
"I'm not a lunatic&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Mink takes a slow whiff from his pipe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000120a05">
"Your grandmother has been taken to the Keisen&, in the
 North&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000130a01">
"Keisen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000140a02">
"Actually&, there are unused warehouses up there&."

{	Fw("fw�~���N_�ʏ�_normal");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000150a05">
"Investigate it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Mink points his pipe to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000160a03">
"I don't remember taking orders from you&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000170a05">
"Think of it as an exchange&. We both want some things
 sorted out&, don't we?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000180a03">
"&.&.&.Tch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("�G�w�i��", 1000, -658, -445, "cg/bg/l/bg102021_5_���}�n����_l.jpg");
	CreateTextureEX("�G�w�i��", 10200, 0, 0, "cg/bg/bg102021_5_���}�n����.jpg");

//���R�C��_�m�C�Y���쉹
	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,600,0,700,null,false);

	Fade("�G�w�i��", 1000, 1000, null, true);

//���k���F�H�׎c��
	CoilNoizeSet();

//���k���F�H�׎c��
	CoilNoizeFade();

	Wait(500);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,600,0,700,null,false);

//	Wait(500);

	CreateSE("SE01","se����_�p�\�R��_�L�[�{�[�h����01");
	MusicStart("SE01",0,700,0,1000,null,true);


	Fade("�G�w�i��", 2000, 1000, null, false);
	CoilNoizeDO01();
	CoilNoizeDO02();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Noiz clicks his tongue angrily&, pulls out the monitor and  keyboard from his Coil&, and begins the operation&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000190a02">
"&.&.&.Anyway&, why do you get to call the shots?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000200a05">
"Fine&, you go ahead and take the initiative&."

{	Fw("fw�g��_�ʏ�_shout");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000210a02">
"Huh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Koujaku bends forward&, not quite satisfied with the answer&.
Mink's allmate stops cleaning its self and raises its head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm06/2000220b12">
"I think you shouldn't waste your energy yelling like
 that&."

{	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/2000240b16">
"'Ey you&, shaddap!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Beni glares at the cockatoo from Koujaku's shoulder&, 
feathers flared up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm06/2000250b12">
"Allmates really are just like their owners&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/2000260b16">
"What'dya say!? You bastard!!"

{	SetVolumeEX("SE*", 200, 0, null);
	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000270a03">
"Both of you&, shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//���R�C��_�m�C�Y���쉹�i���j�^�[���]�j
//�e�F�R�C�����o�͌��


//���k���F�H�׎c��
	FadeDelete("�G�w�i��", 500, null, false);
	CoilNoizeMove(2,500,-1000,100,Dxl1,true);


	CoilNoizeMove(3,0,2000,-200,Dxl1,true);


	CreateSE("coilsound_se","se����_�R�C��_�V�X�e���ړ�");
	MusicStart("coilsound_se",0,700,0,1000,null,false);

//���k���F�H�׎c��
	FadeDelete("�G�w�i��", 500, null, false);
	CoilNoizeMove(1,500,-1000,100,Dxl1,true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Noiz interrupts the Allmates' fight and turns his monitor  over for us to see&.

On it is a map of the Old Resident District with a red 
arrow pointing to a spot&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000280a03">
"This is where Keisen is&. When I tried to access their
 network I got an error&."

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000290a03">
"If it was a normal&, off-limits area&, there wouldn't have
 been a network in the first place&. This place's data has
 a blank error screen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000300a03">
"In short&, it's a fake&. It's trying to emulate a disfunct
 network&."

{	Fw("fw�g��_�ʏ�_cool2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000310a02">
"So we were right&."

{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000320a03">
"I guess&. There used to be a lot of treatment plants built
 here&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000330a01">
"But they all closed down and became off-limits a few years ago&."

{	Fw("fw�g��_�ʏ�_cool2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000340a02">
"And it's still used as a dump&, an illegal one at that&. No
 one's ever cracked down on it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000350a01">
"Granny's there&.&.&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000360a05">
"I've received some reports on roughly where she is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
There's no concrete proof that she's here&.
But it's worth it to take that chance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000370a02">
"Even if Tae-san's kidnappers are here&, we have no idea
 what this place is like&. Isn't that dangerous?"

{	ClearComicNext(20001,77, 313,20,"fw");
	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z�������F�C������
<voice name="�N���A" class="�N���A" src="voice/dm06/2000380a04">
"Oh&, if that's it&, then I know that place quite well&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 1500, 0, null);

	CreatePlainSP("�G��", 15000);

	CreateTextureSP("�G�w�i", 10500, -1023, -198, "cg/bg/l/bg102021_5_���}�n����_l.jpg");

	SetShade("�G�w�i", MEDIUM);

	St("C",10740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 0, @0, @100, null, true);


	Move("@StNameC/C*", 500, @0, @-100, Dxl2, false);
	FadeDelete("�G��", 500, null, true);

	Fw("fw�g��_�ʏ�_sad2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000390a02">
"&.&.&.This isn't a time to joke around&."

{
	SoundPlay("@dm003",0,450,true);
	ClearComicNext(20001,371, 9,12,"st");
	St("C",10740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z�������F�K�[��
<voice name="�N���A" class="�N���A" src="voice/dm06/2000400a04">
"I know&. I really do know this area&. I used to take walks
 in this area a long time ago&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000410a01">
"&.&.&.&.&."

{	Fw("fw�g��_�ʏ�_worry2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000420a02">
"&.&.&.&.&."

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000430a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//	ClearComicNexDelete();

	Fw("fw�~���N_�ʏ�_angry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000440a05">
"&.&.&.&.&."

{	St("C",10740, @0,@0,"fu�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);
	ClearComicNext(20001,0, 0,11,"fu");}
//�y�N���A�z�������F�т�����
<voice name="�N���A" class="�N���A" src="voice/dm06/2000450a04">
"Eh? What is it? Why did everyone suddenly go quiet? Do you doubt me?"

{
	ClearComicNexDelete();
	ClearComicNext(20001,357, 0,19,"fu");
}
//�y�N���A�z�������F�{��
<voice name="�N���A" class="�N���A" src="voice/dm06/2000460a04">
"Please don't do that! I really do know! I can draw you a
 map if you want me to!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i��", 10100, 0, 0, "cg/bg/bg102021_5_���}�n����.jpg");


	CreatePlainSP("�G��", 15000);

	Delete("�G�w�i");
	DeleteSt("C", 0,true);

//���r�d�F�������o���i�؂���j
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
Clear is unhappy with our reactions&, and takes out a piece of paper and pen from his coat pocket&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000470a04">
"Annnnddd&.&.&. Here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
Clear glides the pen across the paper without a single 
pause&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_��_�߂���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 15000);

	CreateMaskSetSPTate("�G�}�X�N��", 12010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�d�e100", 10100, Center, Middle, "cg/ef/ef�}�b�v�{��_�N���A.jpg");

	FadeDelete("�G��", 100, null, false);

	OpenTateMask("�G�}�X�N��",200, 1300,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(500);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000480a04">
"&.&.&.Done! I'm finished!"

{	Fw("fw�g��_�ʏ�_worry");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000490a02">
"Hey&, hey&. Are you serious about this map?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000500a05">
"Compare it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���𝺂�
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);
	CloseTateMask("�G�}�X�N��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�
//	FadeDelete("�G�d�e100", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Mink takes the map from Clear and brings it to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���k���F�H�׎c��

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateTextureSP("�G�w�i��", 9998, -658, -445, "cg/bg/l/bg102021_5_���}�n����_l.jpg");

	FadeDelete("�G�w�i��", 1000, null, false);
	CoilNoizeDO03();

	Wait(500);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000510a03">
"&.&.&.It matches up&."

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000520a02">
"So it really is right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNext(20001,77, 313,19,"fw");
	Fw("fw�N���A_���ʃ}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�N���A�z�������F�{��
<voice name="�N���A" class="�N���A" src="voice/dm06/2000530a04">
"Didn't I say so before? You're all so mean!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearComicNexDelete();

	CoilNoizeDelete();

	SetVolumeEX("@dm003", 2000, 0, null);

	FadeDelete("�G�w�i��", 500, null, true);


//�����o�F�L���������V�[����قǉ��o����
	FwPro("fw���t_�ʏ�_fake",3050,"fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000540a01">
"&.&.&.Well&, with this we won't get lost&. Let's follow it&."

{	Fw("fw�g��_�ʏ�_sad");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000550a02">
"Follow&.&.&. This mask guy?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�ꖇ�G", 100, 0, 0, "cg/ev/ev061�S���W��a.jpg");
	CreateTextureSP("�G���o", 500, -950, -70, "cg/ev/l/ev061�S���W��a_l.jpg");
	CreateTextureSP("�G���o��", 400, 0, 0, "cg/ev/l/ev061�S���W��a_l.jpg");

	Request("�G���o��", Smoothing);
	Zoom("�G���o��", 0, 1055, 1055, null, true);
	Move("�G���o��", 0, @55, @0, Dxl1, true);

	Move("�G���o", 800, @40, @0, Dxl1, false);
	FadeDelete("�G��", 300, null, true);
	Wait(1000);
	Move("�G���o��", 800, @-40, @0, Dxl1, false);
	FadeDelete("�G���o", 300, null, true);

	Wait(1000);
	FadeDelete("�G���o��", 300, null, true);

	SoundPlay("@dm005",0,450,true);

	Wait(1000);
	FadeDelete("�G�ꖇ�G", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
Koujaku looks at the rest of us with a reluctant face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwMask(-950, 160, "cg/ev/l/ev061�S���W��a_l.jpg");
//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000560a02">
"All he does is weird crap&.&.&. Why should we?"

{
	FwMask(-1512, 98, "cg/ev/l/ev061�S���W��a_l.jpg");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000570a03">
"You have no right to say that about someone else&."

{
	FwMask(-950, 160, "cg/ev/l/ev061�S���W��a_l.jpg");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000580a02">
"Shut up&."

{
	FwMask(-1512, 98, "cg/ev/l/ev061�S���W��a_l.jpg");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000590a03">
"I don't have the intention of getting buddy-buddy with you all&. I'm just doing it the easy way&. It's more efficient&."

{
	FwMask(-950, 160, "cg/ev/l/ev061�S���W��a_l.jpg");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000600a02">
"Then we should just all split up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwMask(-15, 257, "cg/ev/m/ev061�S���W��a_m.jpg");
//	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000610a05">
"It's better that way&. Even if we lay out a detailed plan&,
 there's no guarentee that everyone will follow it exactly&.
 Especially the masked guy here&."

{
	FwMask(-950, 160, "cg/ev/l/ev061�S���W��_l.jpg");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000620a02">
"That's what I've been saying!"

{
	FwMask(-15, 257, "cg/ev/m/ev061�S���W��a_m.jpg");
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000630a05">
"I was talking about you and gas mask over there&."

{
	FwMask(-950, 160, "cg/ev/l/ev061�S���W��_l.jpg");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000640a02">
"What was that!?"

{	FwMask(-494, 125, "cg/ev/l/ev061�S���W��a_l.jpg");
	ClearComicNext(20001,68, 331,25,"ev");}
//�y�N���A�z�������F�򊾂Q�H
<voice name="�N���A" class="�N���A" src="voice/dm06/2000650a04">
"Eh&, me? That's awful! I wanted to be friends with all of
 you too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNexDelete();

	FwMask(-1512, 98, "cg/ev/l/ev061�S���W��a_l.jpg");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000660a03">
"Keep your jokes to yourself&."

{	FwMask(-494, 125, "cg/ev/l/ev061�S���W��a_l.jpg");
	ClearComicNext(20001,68, 331,25,"ev");}
//�y�N���A�z�������F�򊾂Q�H
<voice name="�N���A" class="�N���A" src="voice/dm06/2000670a04">
"Ehhhh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
//	TextBoxDelete(0);

	FadeDelete("�G��ꖇ�G", 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
&.&.&.&.&.

&.&.&.This is impossible&.

I thought it would be&, and I was right&. No one is 
cooperating&.

If they could at least look like they could work together&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwMask(-950, 160, "cg/ev/l/ev061�S���W��_l.jpg");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000680a02">
"Hey&, gas mask guy&. Don't butt into our complicated
 conversation&, and shut up!"

{	FwMask(-1512, 98, "cg/ev/l/ev061�S���W��a_l.jpg");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000690a03">
"You should do the same thing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwMask(-494, 125, "cg/ev/l/ev061�S���W��a_l.jpg");
	ClearComicNext(20001,43,320,26,"ev");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�N���A�z�������F�򊾂R�H
<voice name="�N���A" class="�N���A" src="voice/dm06/2000700a04">
"No way! So mean! It's not complicated at all!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
//	TextBoxDelete(0);

//	SetVolumeEX("@�N���A*", 0, 0, null);

//�e�F�ȉ�SE����̂ł��傤���H�����łȂ���΃v���Z�X�Ή�
//	CreateVOICE("�m�C�Y","dm06/2000710a03");
//	CreateVOICE("�N���A","dm06/2000720a04");
//	CreateVOICE("�g��","dm06/2000730a02");
//	CreateVOICE("�~���N","dm06/2000740a05");
//	CreateVOICE("�m�C�Y","dm06/2000750a03");
//	CreateVOICE("�g��","dm06/2000760a02");
//	CreateVOICE("�N���A","dm06/2000770a04");

	DeleteFw();

	CreateTextureEX("�G�ꖇ�G", 100, 0, 0, "cg/ev/ev061�S���W��a.jpg");
	Fade("�G�ꖇ�G", 500, 1000, null, true);

	Request("@text0170", UnLock);
	Delete("@text0170");
	dm0620_seprocess();

//�����o�F���������̉�b�͕`�ʂ̌���SE�Ƃ��ĕ~���Ă��������B����������K���ȂƂ���Ő؂��Ă��������B
//���r�d�F���C���L�����K���E��������

/*
{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000710a03">
"You're complicated just by yourself&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000720a04">
"So mean! You're a bully!!!"

{	Fw("fw�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000730a02">
"You talk like a brat! I can't trust you guys any more than this gas mask guy!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000740a05">
"You said it&."

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000750a03">
"You're a jackass just going on about not trusting anyone in the first place!"

{	Fw("fw�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000760a02">
"You little shit!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000770a04">
"Please stop fighting!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

*/

//�����C���L�����K���E�����܂�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
While I'm sitting here at my wit's end&, these guys just 
keep going on and on like little kids&.

This really isn't the time&.&.&.

While we waste our time&, Granny could be in even more 
danger for all we know&.&.&.

More and more as time goes on&.&.&.

These guys&.&.&.

Are seriously&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm005", 1000, 0, null);

	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	dm0620_sedelete();
	CreateColorEX("�G�F��", 5000, "WHITE");
	Shake("�G�ꖇ�G", 300, 5, 5, 0, 0, 500, Dxl1, false);
	Fade("�G�F��", 200, 1000, Dxl1, true);
	Fade("�G�F��", 200, 0, Dxl1, true);

	Fw("fw���t_�ʏ�͍s�g_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000780a01">
"&.&.&.You guys&, cut this shit out already!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	Delete("�G�F*");
	FadeDelete("�G�ꖇ�G", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
&.&.&.With no patience left&, I yell at them&.

Even if I do that&, they won't listen to me anyway&.

&.&.&.Well&, that's what I thought&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000790a01">
"&.&.&.H-Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
They suddenly all stopped their banter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000800a01">
"Eh&.&.&. Why did&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	Fw("fw�g��_�ʏ�_cool");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/2000810a02">
"It's just like what Aoba said&. We need to stop this&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/2000820a03">
"It was useless to waste our time with this in the first
 place&."

{	Fw("fw�~���N_�ʏ�_angry4");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/2000830a05">
"Anyway&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/2000840a04">
"That's right&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1200,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,500,0,1100,null,false);
	CreateSE("SE03","se�l��_����_�ߎC��01");
	MusicStart("SE03",0,500,0,1000,null,false);
	CreateSE("SE04","se�l��_����_�ߎC��01");
	MusicStart("SE04",0,500,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
Everyone's mind changes with the flip of a switch&, and 
they all stand up from the sofa&.

I don't know how exactly&, but it seems they all came to a  mutual understanding&.&.&.

&.&.&.Well&, whatever&.
It turned out all right in the end&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/2000850a01">
"&.&.&.All right&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,400,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0213]
I pull myself together and get up from the sofa&. 

Granny&.&.&.
I'll definitely save you&.

Mizuki and the rest of Dry Juice too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
We leave Heibon and head towards the North District&.



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm002", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(2000);

//�����t�@�C��["dm0630.nss"]

}
