//<continuation number="50">
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


scene dm3300.nss_MAIN
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
	#bg302061_5_�O���b�^�[�K�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3310.nss";

}


scene dm3300.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/0000010a01">
"&.&.&.Ugh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�F��", 2000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.It was very difficult opening my eyes the next day&.

My body felt as heavy as a brick&, and the awful pain still lingered&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, 0, -286, "cg/bg/m/bg302011_5_�O���b�^�[����01_m.jpg");

	FadeDelete("�G��", 1500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Without even attempting to get up immediately&, I spend my 
time sitting on the bed with my legs out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/0000020a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
My beaten cheeks hurt&. And I can feel a wound from the 
inside too&.

And&.&.&. it hurts inside my body&.
It throbs as if it's been burnt&.

Yesterday&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	EfRecoIn1(10000,200);
//
//	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/bg/bg302051_5_�O���b�^�[�G���g�����X.jpg");
//
//	St("C",1500, @0,@0,"fu�~���N_�ʏ퐳��_serious");
//	FadeSt("C",0,true);
//
//	EfRecoIn2(500);
//
//	Wait(1000);
////
////	EfRecoIn1(10000,200);
////
////	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev339����i�߂��鑓�t.jpg");
////
////	EfRecoIn2(500);
////
////	Wait(1000);
//
//	EfRecoOut1(500);
//
//	Delete("�G����*");
//	DeleteSt("C", 200,true);
//
//	EfRecoIn2(400);


//	SoundPlay("@dm006",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.&.&.

I don't really want to remember&.

Weirdly enough&, I feel a little better but I'm not 
sure why&.

It's probably because I just spewed out all of my 
anxieties and problems&.

When Mink was tormenting me yesteryday&.&.&. I told them all 
to him&.

He drove me into a corner&, but it's ironic that that 
somehow put me a little at ease&.

He&.&.&. I wonder what he did to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 5000);

	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, #624a2b);
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	CreateTextureSPmul("�G���o����", 3000, Center, Middle, "cg/ef/effi��z01.jpg");

	CreateTextureSP("�G���G�w�i", 100, Center, Middle, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	SetShade("�G���G�w�i", MEDIUM);

	St("C",740, @0,@0,"fu�~���N_�ʏ퐳��_serious");
	FadeSt("C",0,true);

	FadeDelete("�G��", 1000, null, true);

	Wait(1000);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Goosebumps line my skin when I recall his whispering 
commands in my ear&.

He told me to expose everything&.

What would happen to me&.&.&.
If I really did all of that?

I wonder what Mink would think of it&.
I don't know myself&, but somewhere inside of me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 5000);

	Delete("�G��*");
	DeleteSt("C", 0,true);

	FadeDelete("�G��", 1000, null, true);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
And&.&.&. when I think about it&, Mink actually carried me all the way to the bed&.

He seemed like the type of character to just leave me 
there&, so why?

Mink's team&.&.&. Mink seemed like the caretaker to the 
members of Scratch&, that's the image I have of him&.

But he also seems like a violent guy who doesn't listen&.&.&.
I don't know&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I slowly get up from the bed and activate Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/0000030a01">
"Morning&, Ren&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm33/0000040a06">
"Morning&, Aoba&. You look like you're in a horrible
 condition&. Are you all right?"

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/0000050a01">
"&.&.&.Well&, sort of&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I reply to Ren with a bitter smile and sluggishly exit the room&.

I took a shower right away&.

Mink came inside of me last night&. It feels disgusting 
running down my legs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302061_5_�O���b�^�[�K�i");
	FadeBG(1000,true);

	CreateSE("SE01","se�l��_����_����05");
	MusicStart("SE01",0,700,0,1200,null,false);

	Wait(300);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(1000,true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Ren leaves the living room with me and follows behind down the stairs to the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3310.nss"]

}
