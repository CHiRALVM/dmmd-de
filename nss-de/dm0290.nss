//<continuation number="440">
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


scene dm0290.nss_MAIN
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

	#dm0290_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0300.nss";

}


scene dm0290.nss
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

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The morning passes with no incidents in particular&, and 
after finishing lunch break&, the afternoon shift starts&.

Since Haga-san went out&, I'm the only one in the shop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000010a01">
"Yes&.&.&. Yes&. Well then&, we look forward to hearing from you again&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
After finishing an incoming call from a customer&, I take a breather&.

Since he reacted to my voice with the usual pattern&, I was able to sell just as many things&.

It seemed like he was one of those who had called before&, 
and he was reluctant to hang up the phone&, so it was a 
little troublesome&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
While I feel disgusted by the excited voice that still 
lingers in my ears&, the doorbell rings&.

Oh&, a customer?

I take my elbow off the counter and straighten myself up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm003",0,450,true);

	St("L",730, @0,@0,"st�L�I_�ʏ�_normal");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000020b10">
"Hiya&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�i�I_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000030b13">
"Aoba&, we came to plaaaaaay&."

{	St("R",730, @0,@0,"st�~�I_�ʏ�_normal");
	FadeSt("R",200,true);}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000040b11">
"Hmph&."

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000050a01">
"&.&.&.It's you guys&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I thought it was a customer&, but the only ones that come inare the evil brat siblings&.

I let out an exaggerated sigh&, rest my elbow on the counteragain and give the kids a sharp glare&.

Whenever they come in&, it always spells bad news&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000060a01">
"You just came to do stupid stuff again&. Go home already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",730, @0,@0,"st�L�I_�ʏ�_shout");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000070b10">
"Aoba&, you're annoying&."

{	St("C",740, @0,@0,"st�i�I_�ʏ�_shout");
	FadeSt("C",200,true);}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000080b13">
"Annnoyiiiiing&."

{	St("R",730, @0,@0,"st�~�I_�ʏ�_shout");
	FadeSt("R",200,true);}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000090b11">
"You just stay quiet now&, all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Those brats&.&.&.

The brats find Bonjin-kun and immediately start chasing 
him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("R",730, @0,@0,"st�~�I_�ʏ�_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 200, 0, 8, 0, 0, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000110b11">
"Ah&, there it is!"

{
	St("C",740, @0,@0,"st�i�I_�ʏ�_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 500, null, true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000120b13">
"Wait up&, wait uuup!"

{
	St("L",730, @0,@0,"st�L�I_�ʏ�_normal");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 200, 0, 8, 0, 0, 500, null, true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000130b10">
"Catch it!"

{
	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 180, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 180, @0, @80, Axl1, false);
	Move("@StNameR/R*", 180, @80, @0, Axl1, false);
	DeleteAllSt(180,true);

	St("C",730, @0,@0,"stAM�}�l����_�ʏ�_normal");
	FadeSt("C",180,true);
	Shake("@StNameC/C*", 200, 0, 15, 0, 0, 500, null, true);
}
//�y�}�l����z
<voice name="�}�l����" class="�}�l����" src="voice/dm02/9000140e59">
"C-Cleaning!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_����_�����}�l01L");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The confused Bonjin-kun quickly moves to escape&.

Bonjin-kun is quite clever for an Allmate&, so he can move 
unexpectedly fast and his evasion ability is also high&.

It's not so easy to catch him&. But that's probably what 
keeps the brats chasing after him&, anyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000150a01">
"Hey&, hey&, hey&, hey&, don't run!"

{
	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@80,"st�i�I_�ʏ�_shout");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000160b13">
"Ah&, come on-!"

{
	St("L",730, @-80,@0,"st�L�I_�ʏ�_shock");
	Move("@StNameL/L*", 200, @80, @0, Dxl1, false);
	FadeSt("L",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000170b10">
"Wait!"

{
	St("R",730, @80,@0,"st�~�I_�ʏ�_shout");
	Move("@StNameR/R*", 200, @-80, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000180b11">
"Catch it already!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�i�I_�ʏ�_angry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 12, 0, 0, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000190b13">
"Come oooooooooooooooon!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE02","se����_����_�����}�l01L");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",730, @100,@0,"stAM�}�l����_�ʏ�_normal");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @-200, @0, Dxl1, false);
	DeleteAllSt(500,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�}�l����z
<voice name="�}�l����" class="�}�l����" src="voice/dm02/9000200e59">
"C-Cleaning! Cleaninining!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se����_��_����01");
	MusicStart("SE03",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Ah&, the shelf is wobbling now&.&.&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
That cardboard looks like it's about to fall&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000210a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
It should be fine to just stop this by force&.

&.&.&.I thought I could&, but I'm one step too late&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ǂ��[��ƕ��������Ă��鉹
//���ς�ς�[��Ɠ��킪�����悤�ȉ�

	CreatePlainSP("�G��", 5000);
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G��", 500, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("�G��", 500, Dxl1, true);

	CreateSE("SE02","se����_�K���X_�����02");
	CreateSE("SE03","se����_�K���X_�����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000220a01">
"Aaahhhh!!"

{	Fw("fw�~�I_�ʏ�_shock");}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000230b11">
"No waaaay! Something broooooke!"

{	Fw("fw�i�I_�ʏ�_fear");}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000240b13">
"It broke!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE04","se�l��_����_�ߎC��01");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateSE("SE05","se����_�֎q_����01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000250a01">
"Don't you 'it broke!' me!"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000260a01">
"You brats!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",730, @0,@0,"st�L�I_�ʏ�_shock");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000270b10">
"Waaah! Aoba got angry!"

{
	St("C",740, @0,@0,"st�i�I_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000280b13">
"Angryyy!!"

{
	St("R",730, @0,@0,"st�~�I_�ʏ�_normal");
	FadeSt("R",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000290b11">
"I hate quick-tempered men!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 180, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 180, @0, @80, Axl1, false);
	Move("@StNameR/R*", 180, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000300a01">
"Shut up! &.&.&.You! Hey! You too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE03","se�l��_����_�ߎC��17");
	MusicStart("SE03",0,700,0,800,null,false);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
I catch the trio by their necks&, drag them to the door&, 
and throw them out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE04","se����_�h�A���}_��01");
	MusicStart("SE04",0,700,0,1000,null,false);

	OnBG(10,"bg102031_1_���}�O�ʂ�");
	FadeBG(500,true);

	Fade("�G�F��", 400, 0, Dxl1, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

	Fw("fw�L�I_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000310b10">
"Uwah!"

{
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,800,null,false);
	Wait(300);
	Fw("fw�i�I_�ʏ�_angry");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000320b13">
"Ouch!"

{
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(300);
	Fw("fw�~�I_�ʏ�_shout2");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000330b11">
"How cruel! You're awful!"

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000340a01">
"Shut up&, shut uuuup! When you make an adult angry&, it can
 get scaaaary&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
I put my hands on my hips and make an "intimidating 
teacher" pose while glaring at the brats&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000350a01">
"Geez&, you're always causing trouble&. Try reflecting a
 little&. And go home already&."

{	St("L",730, @0,@0,"st�L�I_�ʏ�_shout");
	FadeSt("L",200,true);}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm02/9000360b10">
"So annoying! Shut up&, stupid!"

{	St("C",740, @0,@0,"st�i�I_�ʏ�_shout");
	FadeSt("C",200,true);}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm02/9000370b13">
"Stupid Aoba!"

{	St("R",730, @0,@0,"st�~�I_�ʏ�_shout");
	FadeSt("R",200,true);}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm02/9000380b11">
"You're so lame&, you old geezer!"

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000390a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000400a01">
"&.&.&.You little&.&.&."

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/9000410a01">
"&.&.&.Just listen to me alreadyyyyy!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",730, @0,@0,"st�L�I_�ʏ�_shock");
	St("C",740, @0,@0,"st�i�I_�ʏ�_angry");
	St("R",730, @0,@0,"st�~�I_�ʏ�_shock");
	FadeAllSt(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
//������
//�y�L�I�z
//<voice name="���̑�" class="���̑�" src="voice/dm02/9000420ex">
"Waaaaaaaaaaah!!!"{WaitAddText2();}
<BR>

//������
//�y�i�I�z
//<voice name="�i�I" class="�i�I" src="voice/dm02/9000430b13">
//�u��[�[�[�[�[�I�I�I�v

//������
//�y�~�I�z
//<voice name="�~�I" class="�~�I" src="voice/dm02/9000440b11">
//�u��[�[�[�[�[�I�I�I�v

</PRE>
	SetText();
	AddText(1,""Waaaaaaaaaaah!!!"","�L�I","dm02/9000420b10",false,true,1000);
	AddText(2,""Waaaaaaaaaaah!!!"","�i�I","dm02/9000430b13",false,true,1000);
	AddText(3,""Waaaaaaaaaaah!!!"","�~�I","dm02/9000440b11",false,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(200);

//�K�L�ǂ������Ă����i�R���N���[�g�j
	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
The instant I finally snap and yell at them&, the brats makea break for it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0300.nss"]

}
