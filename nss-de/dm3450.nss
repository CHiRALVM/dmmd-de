//<continuation number="150">
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


scene dm3450.nss_MAIN
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

	#bg304091_5_���]�^���[���z�[��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3460.nss";

#CFGVC_TOUE=1;//�R���t�B�O�F���]�{�C�X���

}


scene dm3450.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When I go into the living room&, I see Mink sitting there 
on the sofa&, pipe in hand&, watching the TV&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/5000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.I knew I'd still be nervous&.

I try to casually walk by&, but my feet stop&.

Mink looks angry&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ퐳��_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/5000020a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I wasn't imagining it&. I know because his eyebrows are 
pushed together and his cheeks are stiffened&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
A rare trace of emotion&, anger&, shows in Mink's expression&.

It almost looks like he's scowling while he stares at the 
TV&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm004",0,200,true);

	CreatePlainSP("�G��", 5000);

	CreateTextureEXadd("�G������", 2000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("�G������", 0, 300, null, true);

	CreateTextureSP("�G���w�i", 100, Center, Middle, "cg/bg/bg306011_5_�q�ɊO�ϒʂ�.jpg");

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
On the monitor is a news program&, a report about someone 
who has been arrested&.

The announcer speaks while images are shown&.
What I saw&.&.&. startled me&.

A crowd of men walk along with their heads down&, soon 
followed by the police&.

Those are Scratch's guys&.&.&.
Mink's team members&.

When we were in that warehouse&, Akushima must've caught 
them&.&.&.

The announcer speaks in a disinterested tone&, explaining 
how they were a terrorist group discontented with 
Toue Inc&.

He also mentions that their punishment will be decided 
after Platinum Jail's special commemoration event&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//�������u�m�F�F�����Ŏg���ėǂ��񂾂����H�v
//�@���[�g�̃Z�����j�[�p���������ƁB�Ȃ̂ŁA�������]�{���]�̊Ԃ����z�[���̔w�i�k��
//�ł���Ȃ�A�����̂��ǂ���΃X�[�c�̂ق��i�R�[�g�Ȃ��j�̐؂�o�����ނ���i���q

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/l/bg304091_5_���]�^���[���z�[��_l.jpg");
	SetShade("�G�w�i", MEDIUM);

	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
The image changes to Toue's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

#CFGVC_TOUE=1;//�R���t�B�O�F���]�{�C�X���

//�e�F���]�̃e�[�}���g�p�Ȋ����Ȃ炻�����

//	Wait(1300);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000030b02">
"To all the people of Platinum Jail&, I would firstly like
 to give you an apology for all of the uneasiness caused&."


{	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000040b02">
"I will take on all responsibility for letting these 
 terrorists exert their aggressive actions&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000050b02">
"However&, I would like us to be able to forgive them&.
 Compared to us&, they are the kind of people who know
 grief&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000060b02">
"Envious of our perfectly blessed lives&, they were unable
 to control their envy and attempted to release it
 accordingly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000070b02">
"They must receive punishment&, but I ask this of all of
 you&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000080b02">
"I would like for none of us to hate them&. They may have
 been thrown into misfortune by chance&, and we are all
 human&."


{	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000090b02">
"So please&, do not forget that&. On the surface of such a
 silent yet clear fact&, I will make my decision&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm34/5000100b02">
"I hope that you all will find the compassion in your
 hearts&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	Delete("�G������");
	Delete("�G���w�i");
	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
And then the clip of Toue ends&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/5000110a01">
"&.&.&.Disgusting&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I unconsciously mutter a complaint when the announcer 
comes back onscreen&.

{	SoundPlay("@dm005",0,450,true);}
That Toue&.&.&. is just something&.
Completely disgusting&.

His tone of voice and merciful facade sends shivers down 
my spine&.

I'm sure that when the people of Platinum Jail heard that&, 
they thought he was a great guy&.

A perfectly good man&.
Even when he gave his sickeningly sweet speech&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/5000120a05">
"&.&.&.Bullshit&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
Mink speaks in a low tone&, smoke floating from his mouth 
at the same time&.

The creases in his eyebrows are deep as can be&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Of course I'm angry&, and for once it's impossible to think how Mink couldn't have been affected&.

His own team members were just called pitiful terrorists 
by Toue himself&.

They all placed their lives in Mink's hands&, and now&.&.&.

He said that he'd make his decision after the special 
Platinum Jail event&.

If we don't save them by then&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1000,null,false);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/5000130a05">
"&.&.&.Toue's in that tower&. I'm going in tonight&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
Mink quietly gets up&.

His voice doesn't sound the same as it always has&, this 
time&, he's showing his real feelings&.

This is where it finally gets serious&.

For me&, and for Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I&.&.&. I know I still can't trust him completely&.

In the end&, I still don't know who the person he "wanted 
to hand over" was&.

But now I don't feel anxious anymore&, oddly enough&.

I've decided that I can't win against Mink myself&, so I 
guess I could say that I've given up&.

And I still can't tell if this is a dream or reality&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Yesterday&, something changed when I saw Mink looking out 
of that window&.

More than hate or disgust&, I felt like I wanted to know 
Mink more as a person&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/5000140a01">
"&.&.&.I'm going too&."

{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/5000150a05">
"&.&.&.Of course you are&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Mink says just that&, and walks down the corridor into a 
room&.

It was with his usual bitter words&, but now they have a 
different meaning for me&.

I might be getting ahead of myself&.&.&. but I think that 
was the first time Mink ever properly replied to me&.

At last&, tonight&.&.&. We'll be heading into the tower&.

The determination and readiness in me hardens and time 
passes until night falls&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);
	Wait(2000);

//�����t�@�C��["dm3460.nss"]

}
