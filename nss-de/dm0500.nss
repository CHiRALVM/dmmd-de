//<continuation number="140">
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


scene dm0500.nss_MAIN
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
	$GameName = "dm0510.nss";

}


scene dm0500.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104001_3_���t��O�ʂ茺�֏���");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ef/efbg����001.jpg");

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("��w�i", 250, 100, Dxl1, "slide_01_01_1", true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000010a01">
"Ha&.&.&.Haa&, ha&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Delete("�G�w�i");

	DrawDelete("�G����", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se����_���t���_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104011_5_���t��֏���");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg104011_5_���t��֏���.jpg");
	CreateColorEXsub("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 0, 200, null, true);

	Shake("�G�w�i", 300, 10, 10, 0, 0, 500, Axl1, false);
	DrawDelete("�G��", 200, 100, Dxl1, "slide_01_00_0", true);

//�����ւ̃J�M�������A�h�A���o�^���I�Ɛ����ǂ��J����
	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000020a01">
"Granny!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G�w�i");
	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I unlock the door in a frenzy and jump into the house to 
find it pitch black&.

The lights aren't on&. And it doesn't look like anyone's 
here&.

Granny&.&.&. are you here?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000030a01">
"Granny?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I call for her one more time&, but no one answers&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.This is bad&.

It feels like I'm losing blood&, I feel hot and cold at 
the same time&.

The bloodstains on the walls of the Dry Juice hangout&.
The Granny character that was kidnapped by black bats&.

Both of those images flicker in my head&.

What do I do?
If Granny was&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000040a01">
"Granny!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg104011_5_���t��֏���_m.jpg");
	Move("�G�w�i", 0, @0, @200, null, true);

	Move("�G�w�i", 500, @0, @-100, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I need to search for her&. I run up the hallway&, not even 
thinking of taking off my shoes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000050a01">
"-!? Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I suddenly tripped over something&.

What?

What would be so huge that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 1000, @0, @-100, Dxl1, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
&.&.&.What&.

&.&.&.A person?

&.&.&.A person is lying in the hallway&.

Could it be&.&.&.

&.&.&.&.&.Granny?

The person is lying face down and isn't moving&.

I quiver and catch my breath&, and timidly get closer to 
them so I can see&.

The body is huge&, nothing like Granny&. It's probably a guy&.

I feel a little relieved&.
But&.&.&.

Who is he?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//��ef������E�����ł͂͂����茩���Ȃ�
	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�d�e100", 500, Center, Middle, "cg/ev/evf01�����q�l����ƂɃ^�O�A�[�g.jpg");
	CreateTextureSP("�G�d�e50", 200, Center, Middle, "cg/ev/evf01�����q�l����ƂɃ^�O�A�[�g.jpg");
//	CreateTextureSP("�G�w�i��", 300, Center, Middle, "cg/ev/evf01�����q�l����ƂɃ^�O�A�[�g.jpg");
	CreateColorEXsub("�G�F��", 3000, "WHITE");

	SetShade("�G�d�e100", MEDIUM);
//	SetShade("�G�w�i��", LIGHT);

	Fade("�G�F��", 0, 300, null, true);

	FadeDelete("�G��", 1000, null, true);

//	Fade("�G�d�e100", 300, 0, Dxl1, true);
//	Wait(500);
//	Fade("�G�d�e100", 300, 1000, Dxl1, true);
//	Delete("�G�w�i��");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I stare at him&, and find a tattoo-looking thing on his 
neck&.

This&.&.&. this is probably tag art&.

Besides&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000060a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
This tag&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�d�e100");
	Delete("�G�F��");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000070a01">
"&.&.&.Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//������_�P�l_���ŏd���u�[�c�̋C�z�i�~���N�j
	CreateSE("SE01","se�l��_����_����05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	SetVolumeEX("SE*", 0, 0, null);
	FadeDelete("�G�d�e50", 250, Dxl1, true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000080a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateTextureSP("�G�w�i", 200, Center, 0, "cg/bg/m/bg104011_5_���t��֏���_m.jpg");
	CreateTextureSP("�G��/�G���G", 700, Center, Middle, "cg/bu/bu�~���N_�ʏ�_normal.png");
	CreateStencil("�G��/�G���G�e", 750, Center, Middle, 128, "cg/bu/bu�~���N_�ʏ�_normal.png", false);
	CreateColorSP("�G��/�G���G�e/�G����", 720, "BLACK");

	SetAlias("�G��/�G���G�e", "�G��/�G���G�e");
	DrawTransition("@�G��/�G���G�e/�G����", 0, 0, 500, 300, null, "cg/data/slide_02_00_0.png", true);

	SetShade("�G��/�G�w�i", MEDIUM);

	DrawDelete("�G����", 200, 100, Dxl1, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I feel someone's presence and turn around&.

In the dark hallway&, I see a man standing there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
He's so large that I have to look upwards&, and his 
intimidating stature makes me unable to move a muscle&.

But the fear of him having done something to Granny is 
what scared me the most&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000090a01">
"&.&.&.Where's Granny?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/0000100a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
He doesn't answer&. He stares at me with his cool eyes 
through the darkness&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ߎC��_�߂܂��
	CreateColorEX("�G����", 6000, "BLACK");

	FwPro("fw���t_�ʏ�_shout",1500,"fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000110a01">
"I said where is she&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����", 0, 1000, null, false);
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("�G��/�G*");
	Move("�G�w�i", 0, @0, -268, null, true);
	SetShade("�G�w�i", NULL);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 200, 0, 15, 0, 0, 500, Axl1, false);
	DrawDelete("�G����", 200, 100, Dxl1, "slide_02_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
When I draw closer to him&, someone grabs my shouders from 
behind&.

And it wasn't just one person&. A bunch of people grab and 
hold me down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���Ō��i���ɏd���Ռ��j
	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");

	Fw("fw���t_�ʏ�_pinch");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000120a01">
"Let me go! Fucking- Let go&.&.&.!<?>
{
	Wait(3300);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 50, 1000, Dxl1, true);
	Wait(10);
	Shake("�G�w�i", 200, 0, 20, 0, 0, 500, Axl1, false);
	Fade("�G�F��", 50, 0, Dxl1, true);
}�@&.&.&.Argh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
Something heavy slams into my stomach&, and I stop 
breathing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 200, Center, 0, "cg/bg/l/bg104011_5_���t��֏���_l.jpg");

	St("C",740, @0,@0,"fu�~���N_�ʏ�_normal");
	FadeSt("C",0,true);

	SetShade("�G�w�i", MEDIUM);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/0000130a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/0000140a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
The giant man's fists that look like clumps of shadow sink into my gut&. 

{
	CreateColorEX("�G����", 5000, "BLACK");
	Fade("�G����", 5000, 1000, null, false);
}
I start to fall forward&. I can't breathe&.
My vision starts fade into darkness&.

{
	SetVolumeEX("@dm*", 5000, 0, null);
}
Damn it&.&.&.
Not here&.&.&.

Granny&.&.&.

{
	Fade("�G����", 1000, 1000, null, false);
}
&.&.&.Granny&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���Ó]

	ClearFadeAll(2000, true);

	Wait(3000);

//�����t�@�C��["dm0510.nss"]

}
