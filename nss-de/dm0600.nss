//<continuation number="310">
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


scene dm0600.nss_MAIN
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
	$GameName = "dm0610.nss";

}


scene dm0600.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm001",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//==============================================
//���ȍ~�A����
//==============================================

 //�����}_���x���i���g���ȏ����J�����J�����j

	Fw("fw�g��_�ʏ�_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000010a02">
"&.&.&.Aoba!"

{	Fw("fw�H��_�ʏ�_worry");}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm06/0000020b07">
"Aoba-kun!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
We go inside Heibon&, and both Haga-san and Koujaku leap up&,all color drained from their faces&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("MR",720, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000030a02">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/0000040a01">
"Sort of&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm06/0000050b07">
"That's good to hear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/0000060b16">
"Hey&, is that dog okay too?"

{
	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm06/0000070a06">
"I'm here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Ren's head pops out of my bag and looks up to Beni&, who is perched on Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000080a02">
"This gas mask guy came over to me and said you were
 kidnapped!"

{
	St("C",740, @0,@0,"st�g��_�ʏ�_sad");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000090a02">
"I didn't believe it at first&, but I couldn't get in
 contact with you!"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000100a02">
"And when I tried to ask Tae-san&, I couldn't reach her
 either! I know she hates Coils&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Koujaku looks behind me&, clearly scowling&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000110a02">
"Hey&, that guy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/0000120a01">
"Ah&, um-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry4");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000130a02">
"You bastard&.&.&. You're Scratch's Head&, aren't you!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Scratch?

Isn't that the name of a Rib team made up of prisoners?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/0000140a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000150a02">
"You didn't even notice?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/0000160a01">
"No&.&.&. I never saw their tag art&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_pride2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/0000170a05">
"&.&.&.Hmph&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Mink finds my stupidity amusing and snorts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	DeleteAllSt(0,true);
	CreateTextureSP("�G�w�i100", 100, -180, -576, "cg/bg/l/bg106011_5_�p�r���L��_l.jpg");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
That building was so dark and dirty that I couldn't see a  thing&, either&.&.&.

I think I remember seeing some kind of tag art there&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i15000", 15000, Center, Middle, "cg/ef/efl���S�~���N�`�[��.jpg");
	Fade("�G�w�i15000", 500, 1000, null, true);
	Delete("�G�w�i100");

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
Based off of appearances&, you could say that Scratch is 
just a Rib team&, but in actuality it's a gang of prisoners&.

In short&, it's a group of violent prison escapees&.

The police don't do anything&, and no one wants to mess 
with them either&.

&.&.&.So that was it&.
And those "punishments"&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureSP("�G�d�u101", 101, 0, 0, "cg/ev/ev054�~���N�Ԃ񉣂�a.jpg");
	FadeDelete("�G�w�i15000", 500, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
Banding a mass of prisoners together isn't the easiest 
thing to do&. You'd have to have serious authority in a 
lawless place&.

Even so&, there's still discipline in the team&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");
	Delete("�G�w�i*");
	Delete("�G�d�u*");

	EfRecoIn2(400);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/0000180b16">
"Shit&, a newcomer?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G�}�X�N��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�摜", 1900, -100, -315, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Zoom("�G�}�X�N��/�G�摜", 0, 1200, 1200, null, true);
	Request("�G�}�X�N��/�G�摜", Smoothing);

	CreateTextureSP("�G�}�X�N��/�G���G", 2000, 160, -50, "cg/bu/buAM�g��_�ʏ�_normal.png");
	CreateColorEX("�G�}�X�N��/�G�F��", 1950, "000000");
	Fade("�G�}�X�N��/�G�F��", 0, 300, null, true);

	FadeDelete("�G��", 100, null, false);

	OpenTateMask("�G�}�X�N��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Beni glares at the cockatoo with an intensity&.

{
	CloseTateMask("�G�}�X�N��",200,Dxl3,true);
}
It doesn't make any eye contact&, showing that it doesn't 
care in the slightest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("ML",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�H��z�������F���͂�
<voice name="�H��" class="�H��" src="voice/dm06/0000190b07">
"What a lovely cockatoo&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNext(800,563,115,3,"st");

	St("MR",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/0000200a04">
"It is&. It's a beautiful cockatoo&."

{	ClearComicNexDelete();
	DeleteAllSt(200,true);
	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/0000210b16">
"Heh&, don't be fooled&. He's a bitch&, I can tell!"

{	Fw("fwAM�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm06/0000220b12">
"You're quite a noisy fellow&. How about you replace that
 habit of bantering with singing instead?"

{	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm06/0000230b16">
"-You! Don't you mess with me!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Beni's feathers fluff out&. Like a real bird&, his hostility is clearly visible&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000240a02">
"This is just great&. Running into some low-life scum&. Go
 back to your cell like a good little boy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",730, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/0000250a05">
"You clearly don't think before you speak&."

{	Fw("fw�g��_�ʏ�_angry4");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000260a02">
"Whaddya say? Why are you with Aoba? What are you trying to do here? He's got no money&." 

{	St("C",730, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/0000270a05">
"It has nothing to do with you&."

{	Fw("fw�g��_�ʏ�_angry");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000280a02">
"Huh? Are you trying to start something?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
The tension between Mink and Koujaku seems pretty 
dangerous&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�H��_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm06/0000290b07">
"Ko-Koujaku-kun&, calm down&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/0000300a01">
"Now&, let's just go inside&. This is the entrance anyway&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",730, @0,@0,"st�g��_�ʏ�_cranky2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/0000310a02">
"&.&.&.Tch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);
	St("C",730, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",180,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Koujaku glares at Mink and clicks his tongue&. Mink's 
expression doesn't really change&, but he keeps looking at 
Koujaku&.

{	DeleteAllSt(200,true);}
They were a lot more considerate earlier before&.&.&.

I feel a sudden wave of tiredness as we all enter the shop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

//�����t�@�C��["dm0610.nss"]

}
