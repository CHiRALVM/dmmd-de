
//<continuation number="80">
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


scene dm1230.nss_MAIN
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
	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDrop2Delete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDropStartDelete();
	$GameName = "dm1230sl.nss";

}


scene dm1230.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�1��");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010a]
I looked all around for Koujaku&, but still couldn't find 
him&.

I ended up back on Main Street&, with sweat dripping down 
my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	RainDropStart(740,10);

	CreateSE("SE01","se��_���R_���J");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010c]
Raindrops start falling harder and harder&.

All of Platinum Jail's weather is controlled&, so a program is running to make this rain fall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/3000010a01">
"Let's get back so we don't get drenched&."

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/3000020a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Not that I hate the rain&, I just don't like getting wet&.

And Koujaku might head back too if it's raining&.&.&.

With that in mind&, I scurry down Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	RainDropStartConnect(0);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	CreateSE("SE01","se��_���R_�J01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

	RainDrop(740,0,128);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
By the time I got to Glitter&, it was a total downpour&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	RainDropDelete(0);
	RainDropStartDelete();

	SetVolumeEX("SE01", 3000, 0, null);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	CreateSE("SE02","se����_�O���b�^�[����_���J��01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE01", 1000, 0, null);
	DrawDelete("�G����", 1000, 100, null, "blind_01_00_0", true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/3000030a01">
"We got pretty wet&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
We go inside&, and I take a breath&.

My clothes are soaked and cold&.

I take them off&, go into the bathroom to get a towel&, then 
dry them off&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/3000040a01">
"Did you get wet&, Ren?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
I touch the clumps of blue fur coming out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/3000050a06">
"I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/3000060a01">
"I can tell&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
My worry of him breaking down&.

{
	CreateSE("SE02","se�l��_����_����05");
	MusicStart("SE02",0,600,0,1000,null,false);
}
I put Ren down on the floor and go upstairs with a towel 
around my neck&.

{	SetVolumeEX("SE*", 1500, 0, null);}
I pass the living room&, go down the hallway to the bedroom&,
and sit on the bed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
My eyes move to the window&. It's covered in droplets of 
rain&, but it's soundproof so I can't hear the sound of it 
hitting&.

I wonder if Koujaku is okay&.
He must be soaking wet&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");
	MusicStart("SE01",0,300,0,1000,null,false);

	Wait(1000);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/3000070a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
 A sound&.&.&. from the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se����_�h�A��_���J��01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(500,true);

	CreateSE("SE01","se�l��_����_����06L");
	MusicStart("SE01",0,100,0,500,null,true);
	SetVolumeEX("SE*", 2000, 600, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I quickly get up and look out my door&.

&.&.&.Koujaku&.
He's coming up the stairs&.

{
	SetVolumeEX("SE*", 500, 0, null);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry3");
	FadeSt("C",200,true);

	CreateSE("SE02","se�[��_��_�͂˂�01");
	MusicStart("SE02",0,450,0,600,null,true);
	SetVolumeEX("SE02", 1000, 0, null);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/3000080a02">
"&.&.&.&.&."

So he's back&.
I want to say something&, but I swallow my words instead&.

He's drenched from head to toe&. 

His expression is dark and shows a hint of restlessness&.

{
	CreateSE("SE01","se�l��_����_����06L");
	MusicStart("SE01",0,700,0,500,null,false);

	DeleteAllSt(200,true);
}
It looks like something big might've happened&, as he has a gloomy air around him&.

{
	CreateSE("SE02","se�[��_��_�͂˂�01");
	MusicStart("SE02",0,600,0,600,null,true);
	SetVolumeEX("SE02", 1000, 0, null);
}
As he walks&, I can hear the sound of water dripping&.

I stand in my doorway&, nervous&, and wait for Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

	St("C",740, @0,@0,"bu�g��_�ʏ�_angry3");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
He stops right in front of me&.

Why does he have such an intimidating attitude?
It's hard for me to speak&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	RainDropDelete(0);

//�����t�@�C��["dm1230sl.nss"]

}
