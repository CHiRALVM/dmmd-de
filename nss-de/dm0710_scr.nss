//<continuation number="400">
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


scene dm0710_scr.nss_MAIN
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
	#ev071�~�Y�L�ꂵ��=true;

//�������u���F���������~���N���[�g�ŉ�����������Ęb�������͂��v
	//#ev900�̂̍r��Ă����t=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0720.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm0710_scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	//SoundPlay("@dm017",0,450,true);//�\�I
	CreateColorSP("�G�F��", 5000, "000000");
	//OnBG(10,"bg101021_5_���Z����ʂ藠�H�n01�h���C�W���[�X");
	//Move("@OnBG*", 0, 0, @0, null, true);
	//FadeBG(0,true);
	CreateTextureSP("�G�w�i", 10, 0, -270, "cg/bg/m/bg101021_5_���Z����ʂ藠�H�n01�h���C�W���[�X_m.jpg");

	Delete("��w�i");
	DrawDelete("�G�F��", 2000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.The place through the door was Dry Juice's HQ&.

Why?<k>
They should've been in here&.

It looks like the entire place has been vacated&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
On the staircase where Dry Juice's tag was drawn&, the guy 
I just saw earlier comes over&, holding his head down&.

{
	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,800,null,true);
}
I slowly walk up to him&.

I don't know what will happen&.

But I understand who he is&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetFrequency("SE01", 500, 200, null);
	SetVolumeEX("SE*", 500, 0, null);

{	Fw("fw���t_�ʏ�_worry3");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000020a01">
"&.&.&.Mizuki&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Mizuki slowly raises his head&.

He looks distraught&, as if he was about to cry&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~�Y�L_���]_fear");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000030b06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~�Y�L_���]_fear");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000040b06">
"Help me&, Aoba&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��_�͂˂�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G�����ʗ�", 110, Center, Middle, "cg/anime/center/bloodA_4.png");
	CreateTextureEXmul("�G������", 100, Center, Middle, "cg/anime/center/bloodA_8.png");
	//OnBG(10,"bg101021_5_���Z����ʂ藠�H�n01�����q�l");
	//Move("@OnBG*", 0, 0, @0, null, true);
	//FadeBG(0,true);
	CreateTextureSP("�G�w�i", 10, 0, -270, "cg/bg/m/bg101021_5_���Z����ʂ藠�H�n01�����q�l_m.jpg");

//�e�F���}���u
	Zoom("�G������", 0, 1005, 1005, null, true);
	Zoom("�G�����ʗ�", 0, 1010, 1010, null, true);

	FadeFFR("�G�����ʗ�", 0,1000, 200, 0, 0, 20,null, false);
	Fade("�G�����ʗ�", 1000, 0, null, false);
	FadeFFR2("�G������", 0,1000, 200, 0, 0, 30,null, true);
	Wait(300);
	SetVertex("�G������", 512, 0);
	Zoom("�G������", 7000, 1005, 3000, AxlAuto, false);
	DrawDelete("�G������", 3000, 800, null, "slide_02_01_1", true);
	Delete("�G�����ʗ�");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Suddenly&, the tag art turns black and blood is splashed 
everywhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000050a01">
"What happened to you&.&.&.?"

{	St("C",740, @0,@0,"bu�~�Y�L_���]_fear");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000060b06">
"I don't know what I should do&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000070a01">
"What&.&.&.?"

{	St("C",740, @0,@0,"bu�~�Y�L_���]_fear");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000080b06">
"About Dry Juice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~�Y�L_���]_fear");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000090b06">
"Rib is so fun&, and I love it so much&.&.&. That's why I'm
 always thinking seriously about Dry Juice&."

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000100b06">
"What kind of team we need to be so everyone enjoys it&, so
 no one ever comes to hate it&. I've been thinking about how
 to do that&."

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000110b06">
"I was thinking of how we could make it seem like we were
 family&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000120a01">
"I understand&. That's why Dry Juice became the largest
 team&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000130b06">
"But&.&.&. That's just not good enough anymore&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
Mizuki hangs his head in frustration&, balling fists with 
his hands&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�~�Y�L_���]_angry");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000140b06">
"Rhyme's becoming so popular that it's not working anymore&.
 Everyone is losing interest in Rib&, it was like a dream
 from the past&.&.&. And they just throw it away like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000150b06">
"In the end&, both Rib and Rhyme are just games&. People
 always like new and fun things more&. But I&.&.&."

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000160b06">
"Both Rib and Dry Juice&, they were so important to me that
 I didn't want to let go of them!"

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000170b06">
"That's why getting serious about it was stupid&, but I
 couldn't just let go of it so quickly&."

{	St("C",740, @0,@0,"bu�~�Y�L_���]_fear");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000180b06">
"Our members are steadily moving over to Rhyme&, and we
 aren't getting many new recruits&.&.&. All the effort I put
 into friendships I made are crumbling away&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
It pains me to watch Mizuki say these things while looking 
so miserable&.&.&. <k>I clench my teeth&.

I know that Mizuki holds Dry Juice very close to him&.

But for him to brood like this is&.&.&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I've been close to him for a long time&, but I've never 
noticed how much he was hurting inside&.

It makes me so frustrated to realize I've been so weak&.

If only I could talk about personal things like that with  Mizuki&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000190b06">
"It bothered me everyday&, but I couldn't figure out what
 to do about it&. And then I met a guy that said he was a
 Morphine member&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000200a01">
"Morphine&.&.&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000210b06">
"Since Dry Juice was the best team out there&, I didn't join Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000220b06">
"At the start&, he was suspicious as hell&, and said what I
 was thinking all the time&. But then I met more members
 from Morphine&.&.&.and eventually I thought it was okay&."

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000230b06">
"If they knew I became a member of Morphine&, then everyone
 wouldn't go to Rhyme instead&."

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000240b06">
"And that I could finally boast about Dry Juice again&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000250a01">
"Then you really entered Morphine&.&.&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000260b06">
"Yeah&. But that was a huge mistake&. Morphine wasn't what I
 thought it was&. Morphine&, they're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�Ռ��x�̂���悤�ȉ��o�A���͊��̂���V�[���ɂ���B�z���[���Ƃ��Ɂv
//�������u���o�F�Z���t�͌��\���߂āA�����r�d�Ƃ��Ɂv
//�������u���o�F���m�N�����ȁA�V�[���ʂ��Č������F����v
//�������u���P�F�����̉��o�܂��v

//����z�t���b�V���o�b�N
	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se�[��_��z_�t���b�V���o�b�N03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);

	CreateColorSP("�G�F��", 1000, "000000");

	FadeDelete("�G�F��", 70, null, true);

//�h���C�W���[�X�̗��܂��A���킴��B
//���荇���P���J�̉��A�ǂ��ǂ��|���B

	CreateSE("SEL01","se��_�퓬_����01L.ogg");
	MusicStart("SEL01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�h���C�W���[�X�����o�[�`�z
<voice name="�h���C�W���[�X�����o�[�`" class="�h���C�W���[�X�����o�[�`" src="voice/dm07/1000270e51">
"Ugh&.&.&.&."

{
	CreateSE("SE01","se�l��_�Ռ�_�]�|02����");
	MusicStart("SE01",0,700,-3000,1000,null,false);
}
//�y�h���C�W���[�X�����o�[�a�z
<voice name="�h���C�W���[�X�����o�[�a" class="�h���C�W���[�X�����o�[�a" src="voice/dm07/1000280e52">
"You know&, Mizuki&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL*", 150, 0, null);
	CreateSE("SE02","se�l��_�Ռ�_�]�|03����");
	MusicStart("SE02",0,700,3000,1000,null,false);

//��R�Ɨ����s�����~�Y�L�B
//�ڂ̑O�̌��i�ɜ��R�Ƃ��Ă�B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000290b06">
"No&.&.&. You're lying&.&.&."

{
//�����q�l�R�c�̑����Ƃ�
	CreateSE("SE011","se�l��_����_����01");
	MusicStart("SE11",0,700,0,900,null,false);
	CreateSE("SE012","se�l��_����_����01�ӂ��");
	MusicStart("SE12",0,700,0,1200,null,false);
	CreateSE("SE013","se�l��_����_����01�������");
	MusicStart("SE13",0,700,0,1200,null,false);
}

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000300b06">
"Dry Juice finally became a part of Morphine&, isn't that
 what I told you!? But why&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se�[��_��z_�t���b�V���o�b�N03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000310b06">
"Don't mess with me&.&.&.&. Damn it&.&.&.&.!!"

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000320b06">
"&.&.&.&.&.Ugaahhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������Ԃ�
	SL_centerdamN(@0, @0,2000);
	SL_centerdamfadeN2(10);

//����z�I���

//�������u���o�F�����܂ň�u�̏o�����Ƃ��Ĉ����̂ŁA�����̌��̉�ʂւ̖߂��͂܂�������Ȃ��v
//�������u���o�F�����Ԃ��̂r�d�͑����������̂ŗ����Ȃ��v

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se�[��_��z_�t���b�V���o�b�N03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�F��");
	DeleteAllSt(0,true);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
Mizuki's facial expression suddenly changes&.

{
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Holding on to his stomach in pain&, he falls to the ground 
on his knees&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000330a01">
"Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000340b06">
"Ugh&, urghhh&, aaaaahhhhh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/ev071�~�Y�L�ꂵ��.jpg");
	CreateTextureEX("�G�d�u��", 1110, -490, -45, "cg/ev/l/ev071�~�Y�L�ꂵ��_l.jpg");
	Zoom("�G�d�u��", 0, 1500, 1500, null, true);
	SetBlur("�G�d�u��", true, 3, 500, 30, false);

	CreateSE("SE01","se�[��_����_�h��01");
	CreateSE("SE01","se�[��_����_�h��03");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE01",0,1200,0,1000,null,false);

	FadeFFR2("�G�d�u��", 0,1000, 100, 0, 0, 60,null, true);
	Fade("�G�d�u", 0, 1000, null, true);
	Delete("�G�d�u��");
	SoundPlay("@dm017",0,450,true);//�\�I

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Mizuki tilts his head upward as if it was tearing apart&.

His eyes turn in every direction&, and he opens his mouth 
to let out a hoarse scream&. Large amounts of sweat drop 
from his chin and pool on the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000350a01">
"Hey&, Mizuki!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetBlur("�G�d�u", true, 3, 500, 200, false);
	FadeFFR2("�G�d�u", 0,1000, 200, 0, 0, 30,null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000360b06">
"Aggggghhhhhhhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0095]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000370a01">
"Mizuki!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G���w�i", 1310, Center, -110, "cg/ev/m/ev071�~�Y�L�ꂵ��_m.jpg");
	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFFR2("�G���w�i", 0,1000, 200, 0, 0, 20,null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
I rush over to Mizuki and grab hold of his shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�A������Ǝ����̉ߋ��𑖔n���̂悤�Ɏv���o���B
//�r��Ă����������΂��Ă���B
//���C��������Ă����B
//���̎��̑ΐ�҂͑��t�ɒׂ���ē|���B

	CreateTextureEX("�G�����t�r", 1410, 0, 0, "cg/ev/l/ev900�̂̍r��Ă����t_l.jpg");
	CreateTextureEXmul("�G�����t�r��", 1420, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G�����t�r��", 0, 1100, 1100, null, true);

	CreateSE("SE01","se�[��_����_�Ή�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�����t�r��", 1000, 0, 40, 0, 0, 1000, null, false);
	Fade("�G�����t�r��", 0, 1000, null, true);
	FadeFFR2("�G�����t�r", 0,1000, 200, 0, 0, 40,Dxl1, false);

	Wait(40);

	Fade("�G�����t�r", 0, 0, null, true);
	Fade("�G�����t�r��", 0, 0, null, true);

	Shake("�G�����t�r��", 1000, 0, 40, 0, 0, 1000, null, false);
	Move("�G�����t�r", 0, -1024, -440, null, true);
	Fade("�G�����t�r��", 0, 1000, null, true);
	FadeFFR2("�G�����t�r", 0,1000, 200, 0, 0, 40,Dxl1, false);
	Wait(40);
	Fade("�G�����t�r", 0, 0, null, true);
	Fade("�G�����t�r��", 0, 0, null, true);

	Shake("�G�����t�r��", 1000, 0, 40, 0, 0, 1000, null, false);
	Zoom("�G�����t�r", 0, 2000, 2000, null, true);
	Move("�G�����t�r", 0, -885, -90, null, true);
	Fade("�G�����t�r��", 0, 1000, null, true);
	FadeFFR2("�G�����t�r", 0,1000, 200, 0, 0, 40,Dxl1, false);
	Wait(40);
	Fade("�G�����t�r", 0, 0, null, true);
	Fade("�G�����t�r��", 0, 0, null, true);


{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000380a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
What? What's going on?

Just now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����Ƀ��x���F�Q
//���r�d�F������A�Ɠ��Ɂi�ȍ~�A�����Ƃ��������j
	CreateSE("SE11","se�l��_����_�ɂ�01L");
	MusicStart("SE11",0,700,0,800,null,true);
$HALevel=2;
	HAFade(2000, 0,false);

	CreateTextureEXmul("�G���蓮����", 3000, Center, Middle, "cg/ef/ef���t��������a.jpg");
	Zoom("�G���蓮����", 0, 1100, 1100, null, true);
	SetBlur("�G���蓮����", true, 3, 500, 30, false);

	CreateProcessEX("�v���Z�X", "LProc_dm0710_scr_01Act");
	Request("�v���Z�X", Start);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/1000390a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetFrequency("SE11", 0, 1000, null);
	CreateTextureEXmul("�G�d�u�Q", 1510, 570, 450, "cg/ev/l/ev900�̂̍r��Ă����t_l.jpg");
	Zoom("�G�d�u�Q", 0, 2000, 2000, null, true);

	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
My head hurts&.&.&.

I can see something&.

{
	SetFrequency("SE11", 0, 1400, null);
	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 0, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 0, null, true);
}
These images&.&.&.

These&.&.&. memories&.

{
	SetFrequency("SE11", 0, 1800, null);
	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 0, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 0, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 1000, null, true);
	Wait(30);
	Fade("�G�d�u�Q", 0, 0, null, true);
}
These are&.&.&.

My&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);
	Delete("�G�d�u�Q");
	Request("�v���Z�X", Stop);
	Delete("�G���蓮����");

	CreatePlainSP("�G��", 1991);
	CreateEffectSP("�G�ʍb", 1990, Center, Middle, 1024, 576, "Plain");
	CreateEffectSP("�G�ʉ�", 1990, Center, Middle, 1024, 576, "Plain");
	CreateEffectSP("�G�ʕ�", 1990, Center, Middle, 1024, 576, "Plain");
	SetVertex("�G��*", center, middle);

	MoveFFP1("@�G��*",300);
	SetBlur("�G��*", true, 3, 200, 200, false);
	FadeDelete("�G��", 500, null, false);
	Zoom("�G�ʍb", 8000, 1250, 1250, Axl1, false);
	Zoom("�G�ʉ�", 8000, 1500, 1500, Axl1, false);
	Zoom("�G�ʕ�", 8000, 2000, 2000, Axl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0115]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm07/1000400b06">
"Ahhhhhhhhhhhhhhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�A�o�`���ƃ~�Y�L�̐��E����e���o����Č������E��

	CreateSE("SE01","se�[��_����_�m�C�Y01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�[��_����_�L�[��01");
	MusicStart("SE02",0,700,0,2000,null,false);
	CreateColorSP("�G�F��", 15000, "000000");

	Wait(1000);

	ClearFadeAll(1000, true);

//�����t�@�C��["dm0720.nss"]

}
