//<continuation number="500">
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


scene dm0460.nss_MAIN
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

	#dm0460_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0470.nss";

}


scene dm0460.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101021_5_���Z����ʂ藠�H�n01�����q�l");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 105, 0, Middle, "cg/bg/bg101021_5_���Z����ʂ藠�H�n01�����q�l.jpg");

	St("C",740, @0,@0,"st�g��_�ʏ�_angry2");
	FadeSt("C",0,true);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,700,null,false);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);}
Reality hits me and I'm completely in shock&. I can hear 
footsteps coming here from both the entrance and the exit 
at the same time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000020a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm002",0,450,true);

	Wait(500);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000030b04">
"Hey&, I was wondering who it was&. Fancy meeting you here&,
 Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000040b09">
"Yoohoo&, Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000050a01">
"You guys&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The footsteps coming into the alleyway came from Virus and Trip&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000060a01">
"Why're you guys here?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_fake");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000070b04">
"We're in charge of the area around here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000080a02">
"&.&.&.Yakuza?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujaku glares at the two of them&, murmuring curses under  his breath&.

Koujaku is in Rib&, so seeing yakuza walk around like they 
owned the place isn't a pleasant sight to him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000090a02">
"Are you guys twins? You look exactly alike&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal2");

	FadeAllSt(180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�������ɕ\��
//�y�E�C���X�z
//<voice name="���̑�" class="���̑�" src="voice/dm04/6000100ex">
"We are not twins&." / "We're not twins&."{WaitAddText2();}
<BR>

//�������ɕ\��
//�y�g���b�v�z
//<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000110b09">
//�u�o�q����ˁ[����v

</PRE>
	SetText();
	AddText(1,""We are not twins&."","�E�C���X","dm04/6000100b04",true,true,1000);
	AddText(2,""We're not twins&."","�g���b�v","dm04/6000110b09",true,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000120a02">
"Aoba&, you're with these kind of people?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000130a01">
"I'm not&.&.&. They weren't yakuza when I first met them
 anyway&. It was when you left the island&, Koujaku&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(180,true);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_smile");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000140b04">
"Yep&. You could say that we're old friends&."

//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000150b09">
"Yeah&, yeah&, nothing to do with our work&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_fake");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000160b04">
"We're in a pretty violent buisness&, but we're not
 breaking any rules&. We do as much as our common sense
 allows; it's nice to meet you&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_angry2");
	FadeSt("C",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000170a02">
"You're still yakuza&. That's not good or bad&. From the
 last bone and to the last drop of their blood&, that's
 what they are and always will be&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
While Koujaku speaks&, he looks at both Virus and Trip&.

I was a little astonished too&, to be honest&.
Koujaku's tone was so awfully angry and violent&.

Does Koujaku really hate yakuza to that extent&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_shock");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000180b04">
"Althought these are our words&, both the yakuza and police
 have never really changed much on this island&. Isn't that
 right?"

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000190b04">
"Aren't you that team's Head? I wonder how many policemen
 you had to make nice with&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_cranky2");
	FadeSt("C",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000200a02">
"I'm not trying to say that all policemen are bad&. Just
 that some are rotten in the barrel&."

{	DeleteAllSt(180,true);
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_fake");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeAllSt(200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000210b04">
"Well&, we'd like to thank you&. As rotten yakuza&."

{	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000220b09">
"Haha!"

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",180,true);
}
//�y�g���z�@
<voice name="�g��" class="�g��" src="voice/dm04/6000230a02">
"&.&.&.&.&."

{	DeleteAllSt(180,true);
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeAllSt(180,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000240b04">
"By the way&, isn't one of your friends in Dry Juice&, Aoba?
 Have they moved off to somewhere else?"

//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000250b09">
"We haven't seen any of their members yet&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000260a01">
"They're all&.&.&. gone&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_shock");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000270b04">
"Gone?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_shock2",5500,"fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000280a01">
"We only just got here a little while ago&, but Dry Juice's
 tag was painted out&, and&.&.&. Morphine's tag was drawn on
 it&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000290b04">
"Morphine&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Virus puts his hand to his lips in deep thought&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_angry");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000300b09">
"You mean Morphine&, that living fantasy team?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000310a01">
"Yeah&. I was thinking that maybe it was someone trying to
 frame Morphine for it&, though&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_shock");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000320b04">
"All the same&, that's quite barbaric&. Taking out an entire
 team in one shot&.&.&. how vicious&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000330a02">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000340a01">
"Aren't you guys in charge of this area? Do you know
 anything?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000350b04">
"That's true&. What we know&.&.&."

{	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000360b09">
"It was difficult to make the rounds last night&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000370b04">
"We couldn't find a single Dry Juice member&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000380a01">
"Around what time was that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000390b09">
"Around nine? Didn't it happen later anyway?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_think");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000400b04">
"And they didn't kidnap just one number&.&.&. but all of them&. That isn't such a simple thing to do&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000410a01">
"I know that&. So&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Isn't this exactly like when Morphine just disappeared on 
the map back then?

I want to say that&, but all that I mutter to myself stays  in my mind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000420b04">
"So that's it&. Now I understand the situation a bit more&.
 I'll contact you if anything happens on our side&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/6000430a01">
"Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000440b04">
"We're already used to these kinds of dangerous subjects&.
 Be safe&, Aoba-san&."

{	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/6000450b09">
"I don't know why the hell we're doing this&, but we'll do
 what we can&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_angry4");
	FadeSt("C",180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000460a02">
"You should get your fucking noses out of Rib&. What do you
 think you can do?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Koujaku tries to provoke them&, but Virus just heightens 
his eyebrows in amusement&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000470b04">
"You think we're parasites of this town&, don't you? Our
 goal is to just hold our footing and build up our
 influence&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_fake");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000480b04">
"Morphine or whatever is fine&, but to dirty up our land is
 a bit of an unpleasant thing to do&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cranky2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/6000490a02">
"Tch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Koujaku clicks his tongue at the cheerfully smiling Virus&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	FadeAllSt(200,true);
	FadeStPro("ML", 4550, 180);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/6000500b04">
"Well then&. We'll go check out the area and&.&.&. Hm?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);

//�����t�@�C��["dm0470.nss"]

}
