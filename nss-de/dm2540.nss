//<continuation number="20">
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


scene dm2540.nss_MAIN
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

	#bg002012_1_���Z����S�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2550h.nss";

}


scene dm2540.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg002012_1_���Z����S�i");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -479, -578, "cg/bg/l/bg002012_1_���Z����S�i_l.jpg");

	FadeDelete("��w�i", 1000, null, true);

	Move("�G�w�i100", 2000, -479, -265, Dxl1, true);

	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
After the central part of Oval Tower collapsed&, all 
functions of Platinum Jail came to a halt&.

But a quick intervention from the mainland calmed the 
chaos&.

The cause of Oval Tower's collapse was said to be the 
collapse of its main system&. Further details are unknown&.

Most of the people left in the tower were miraculously 
saved&, and there were no deaths or critical injuries&.

Before the tower began to act up&, it looks like a message 
was transmitted to the tower&.

However&, a portion of Toue's inner personnel are missing&.

Taking advantage of this opportunity&, Toue's plans&, 
research&, and experiments were brought into the light&.

With the plan to attract the people of the Old Resident 
District in with his special commemorative event foiled&, 
the people barely escaped his clutches&.

Toue Inc&.'s affiliated businesses have been undertaken by 
different companies&. Allmates as well&.

Even the Rhyme companies have been transformed&, Usui is no longer used&.

Soon&, Toue Inc&.'s image will fade from Midorijima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Right now&, the islanders are trying their hardest to take 
back their island&.

Koujaku is continuing as a hairdresser like he's always 
been&, and Clear shows his face at Heibon from time to 
time&.

Mink broke contact&. But there's no way he could've 
disappeared&.

Mizuki regained consciousness&. He can't leave the hospital&,
but he's happy whenever I come to visit him&.

I've been passing by the days like I always have with 
Granny since I came back to the Old Resident District&.

My headaches have become a thing of the past&.

And the pain I feel in my hair has become dimmer lately&.

I haven't felt "his" presence lately&.

But&.&.&. I know he's still inside of me&.

He's sleeping somewhere deep inside of me&.
I can feel it&.


So honestly&, my anxiety isn't exactly gone&, but I'm calm 
enough&.

Noiz suffered from complicated bone fractures all over his body&, so he's been admitted to the Old Resident District's hospital&.

For his first few days&, he could barely even move&.

So I've decided to annoy him and go and see him every day&.

Luckily though&, Noiz got to have his own private room&. 
It's better that way&, with his personality and all&.

Noiz is in rehab right now&, and he'll be able to be 
discharged some day&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	OnBG(10,"bg107021_1_�a�@�a���O");
	FadeBG(0,true);

	Wait(1000);

	FadeDelete("�G�F��", 1000, null, true);

	CreateSE("SE01","se����_�h�A��_�m�b�N01");
	MusicStart("SE01",0,600,0,1000,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I've gotten used to the routine; I stand in front of the 
door and knock&.

//{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/4000010a01">
"I'm coming in!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�����H�F���z��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/4000020a03">
"Okay&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2550h.nss"]

}
