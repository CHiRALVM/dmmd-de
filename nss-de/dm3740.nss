//<continuation number="250">
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


scene dm3740.nss_MAIN
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
	$GameName = "dm3750.nss";

$HALevel=1;

}


scene dm3740.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	CreateColorSP("�G�F��", 4000, "000000");

	CreateTextureEX("�G�w�i", 20, 220, -285, "cg/bg/bg304061_5_���]�^���[�K�i.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	Delete("��w�i");

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 500, 1000, null, true);
	Wait(500);
	Delete("�G�F��");
	FadeDelete("�G�F��", 2000, null, true);


//����ʐؑց^���t���_

//���\�I���甲���o�Ă��郀�[�r�[�H�G�t�F�N�g�H
//�����t��������\�I���Č����ɖ߂��Ă����Ƃ����Ƃ��납��
//�@�n�܂肽����ł����A���o�I�ɕs���R��������
//�@�y��������\�I���Ă�Z���t�Ƃ�����܂��B

$HALevel=1;

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�����z
<voice name="����" class="����" src="voice/dm37/4000020b08">
"U&.&.&.gh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//���r�d�F�ǂ�����Ə��ɕ��ꗎ����
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Akushima falls down with his eyes and mouth both wide open&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000030a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.It went perfectly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 800, @0, @80, DxlAuto, false);
	FadeDelete("�G�w�i", 800, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
With a sigh of relief&, I slowly stand up&.

The other Scratch members seem to have made it down&, as 
time started up again from after I had been in Scrap&.

Another headache should be coming on&.

I prepared myself for it&.&.&. but nothing happened this time&.

And it was as if the headache from before had faded away&.

The headaches should be getting worse the more I use it&.&.&.
Why?

The reason might be&.&.&.

&.&.&.Because I wanted to use it this time&, from the bottom 
of my heart&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
When I wished to use it for myself&, it made a pathway&, 
maybe&.&.&.

Maybe that's it&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���r�d�F�ǁ[��Ɖ����Ŕ������i�^���[�Ɏd�|��������j
	CreateSE("SE01","se����_���]�^���[_����01");
	MusicStart("SE01",0,400,0,1000,null,false);
	BGPlainShake(50,2000,0,5,0,0,1000,DxlAuto,true);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000040a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
The sound of an explosion booms from somewhere&, and the 
hallway starts to shake and sway&.

&.&.&.Maybe this is what the Scratch members were talking 
about?

Blowing up the tower&.<k>
But&, what about Mink?

&.&.&.&.&.
{	Wait(300);}
&.&.&.Mink&.

He never had the intention to come back alive from the 
start&.

So that's why he gave that order to the other team 
members&.

To blow up the tower and leave him behind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwAM�g��_�o�C�N_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000050b12">
"Get on&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
The bike stops right in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000060b12">
"It's my duty to get you down safely&. That's what Mink
 told me&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000070a01">
"Eh&.&.&. Mink did?"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000080b12">
"Yeah&. He personally requested me to get both you and the
 rest of the team members down from here&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Mink found his way to use my power to get what he wanted&.

But he never intended to take me along with him&.

Mink was thinking about it until the last moment&.

He never meant for anyone else to die except him&.

That's how far his "plan" went&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000100a01">
"&.&.&.What the hell&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
Completely manipulating others&, and only letting me know 
until the final moment&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0057]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000110a01">
"That's so selfish!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	CreateColorSP("�G�F���Q", 500, "000000");
	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_normal");
	FadeSt("C",0,true);


	Fade("�G�F��", 500, 500, null, true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
He eliminated all emotions in a single strike so he could 
precisely and swiftly obtain his objective&.

If he were to lose any focus at all&, the success rate 
would fall&.

So Mink acted that way&. I thought he was just that kind of person&.

But the members that adored him had no choice but to think he was a marvel&.

They must have known what sort of person he really was&.

He might have just shown me that side of him so he could 
use me as a tool&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�������u�m�F�F�����̑��t�̃Z���t���ǂ��ɂ����Ă邩�ɂ���āA�n�艉�o�̉ӏ��𒲐��v
//������́��̐S���`�ʂɂ������Ă܂��B�i�R

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000120a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���S�S�S�S�S�A�ƒn�聕�x�񂪖�n�߂�
//�������u���o�F�^���[�|��A�Ƃ肠�����̉�����v
	CreateSE("SE01","se����_���]�^���[_����01");
	MusicStart("SE01",0,400,0,1000,null,false);

	Fade("�G�F��", 300, 1000, null, true);
	FadeDelete("�G�F���Q", 0, null, true);
	DeleteAllSt(0,true);


	CreatePlainSP("�G��", 100);
	Shake("�G��", 300, 10, 60, 0, 0, 1000, null, true);

	FadeDelete("�G�F��", 300, null, true);

	CreateSE("SE11","se����_���]�^���[_�n��01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	Shake_Loop("@�G��","shake01");

	CreateSE("SE12","se����_���]�^���[_�A���[��01L");
	MusicStart("SE12",0,300,0,1000,null,true);


	CreateColorEXmul("�G�F��", 500, RED);
	Fade("�G�F��", 300, 600, null, true);

	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000130b12">
"Quickly&, get on&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000140a01">
"&.&.&.I know&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
The emotions swell up in my chest&, and I straddle myself 
onto the bike seat&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000150b12">
"We're going to bolt out of here until the tower
 collapses&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000160a01">
"Ah&.&.&. Give me a second&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Akushima&.&.&.

He'll die if I leave him alone in the tower when it 
crumbles down&.

&.&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000170a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
I can't bring myself to leave him here&.
He'll haunt me in my dreams&.

I get off the bike&, run up to the knocked out Akushima&, 
and pull up his body&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	CreateSE("SE02","se�l��_����_��������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);


	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0089]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000180a01">
"He's so heavy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
I settle him down by the tail&.&.&. Or rather&, hang him from 
it and hold onto his back while I'm in the seat&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000190b12">
"You're going to take him too?"

{	Fw("fw���t_�ʏ�_cranky2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000200a01">
"I guess&.&.&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000210b12">
"Hm&. That's like you&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000220a01">
"Really?"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000230b12">
"It's both a good and a bad thing about you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
I feel like he was making fun of me&, and I fasten my grip 
as the bike immediately takes off&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/4000240b12">
"Hold on tight&. And hold onto him tight&, too&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/4000250a01">
"Yeah&. I'm counting on you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//���o�C�N�����i���đ��苎���Ă�����
	CreateSE("SE01","se�敨_�����o�C�N_�}����01");
	CreateSE("SE02","se�敨_�����O�o�C�N_���苎��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(2000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("����*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm3750.nss"]

}
