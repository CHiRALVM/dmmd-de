//<continuation number="190">
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


scene dm0630.nss_MAIN
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
	#bg402021_1_��������֎~���H��O��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0630sl.nss";
	}else {		$GameName = "dm0632.nss";
	}

}


scene dm0630.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
//	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg402011_1_��������֎~���ʂ�");
	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("��w�i", 1000, null, true);

//	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);
	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The North District's Keisen was like a ghost town&, 
completely in ruins&.

More and more large warehouses were being built&, but they 
were all labeled "No Tresspassing"&, so this area became a 
place to illegally dump trash&.

As if to deck out the empty buildings&, people would throw 
their old funiture&, and anything else really&, into them&.

Of course nobody was there&, and it gave off an eerie 
atmosphere&.

While being very careful&, we follow Clear's lead&. 

There are mountains of trash here&, and it leads me to 
remember something&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000010a01">
"It&.&.&. looks like the place from the game!"

{
//	St("C",740, @0,@0,"st�g��_�ʏ�_worry3");
//	FadeSt("C",200,true);
	Fw("fw�g��_�ʏ�_worry3");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/3000020a02">
"Game?"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000030a01">
"That game that I got sent!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000040a01">
"But it wasn't a game&, just a demo movie&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000050a01">
"Some guys took out Granny and kidnapped her&. And they took her to where there were trash heaps!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000060a04">
"This place certainly is a dump&."

{
//	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
//	FadeSt("C",200,true);
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/3000070a02">
"It's just a coincidence&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000080a01">
"I thought so too&, but it's still strange&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/3000090a03">
"Isn't there a treatment center around here?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�R�C�����o

//���k���F�H�׎c��
	CoilNoizeSet();

//���k���F�H�׎c��
	CoilNoizeFade();


	CoilNoizeDO01();
	CoilNoizeDO02();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Noiz pulls up a map on his Coil and shows it to everyone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilNoizeDO04();

	Wait(1000);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000100a04">
"So there is&."

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/3000110a03">
"It's the tallest standing building in this area&."

{	Fw("fw�g��_�ʏ�_cool");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/3000120a02">
"That sounds very suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilNoizeDelete();

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000130a04">
"I'll go there immediately&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Clear quickly walks in the building's direction&.

He did say that he used to take walks here&, but he's a 
weird one&, isn't he&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg402021_1_��������֎~���H��O��");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);
	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SE11","se��_���R_���Ɩ؁X01L");
	MusicStart("SE11",2000,250,0,700,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
We walk along a trash ridden path and see a giant building&.This must be it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 5000, 0, null);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,900,null,false);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000140a04">
"&.&.&.Please wait&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Clear puts his arm out to stop us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000150a01">
"What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000160a04">
"I can hear it&. Right now&. In there&."

{	Fw("fw�g��_�ʏ�_normal2");}

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/3000170a02">
"Hear it&.&.&. I don't hear anything&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I listen carefully&, but all I can hear is the rustling of 
trash&.

But it doesn't seem like Clear is messing around&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/3000180a04">
"I hear them&. They're in there&."

{
	Fw("fw���t_�ʏ�_serious");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/3000190a01">
"&.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Making sure we breathe quietly&, we start to advance 
towards the plant&.

{
	CreateTextureEX("�G�w�i100", 100, -515, -570, "cg/bg/l/bg402021_1_��������֎~���H��O��_l.jpg");
	Move("�G�w�i100", 500, -515, -485, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);
}
Clinging to the walls&, I can hear the faint sound of 
people inside&.

It's just like Clear said&. People are in here&.

Even more than we thought&.&.&.

I touch the bag under my arm&. 
Ren is in Sleep Mode&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0630sl.nss"]�����d�c�N���A��o��
//�����t�@�C��["dm0632.nss"]

}
