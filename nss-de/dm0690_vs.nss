//<continuation number="390">
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


scene dm0690_vs.nss_MAIN
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
	#ev069�~�Y�L�l�������=true;
	#bg402051_1_��������֎~��无�ʂ�=true;

	//�����o������������
	TiesMovieDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0700_scr.nss";

}


scene dm0690_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	$NoTextBoxDelete=true;
	PrintBG("��w�i", 30000);

	OnBG(10,"bg402041_1_��������֎~���H��ʘH");
	FadeBG(0,true);


	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);
	FadeDelete("��w�i", 200, null, true);

//==============================================
//���ȍ~�A����
//==============================================


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I passed through a line between the black-clothed guys and Mink's men and ran full speed to the door farther inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//���ǂ����A�΂����Ɛ���Ă鉹�����ŕ�������
	CreateSE("SE11","se��_�퓬_�퓬01L");
	MusicStart("SE11",0,700,0,1000,null,true);

//���h�A���J���鉹
	CreateSE("SE01","se����_�h�A�S_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);
	CreateSE("SE02","se����_�h�A�S_���J��01b");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitPlay("SE02", null);
	Wait(2000);

//�������u���o�F�����ň�x��C��؂�ւ��ăX���[�e���|�ŉ񂵂Ă����v

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

	CreateSE("SEL01","se��_���R_���Ɩ؁X01L");
	MusicStart("SEL01",3000,250,0,400,null,true);

	FadeDelete("�G�F��", 2000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I open the door and go outside&.

In front of me is a parking lot space&, a car&, and black 
colored van that had been parked&.

Around it stands a crowd of people in black clothing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�w�i", 100, -690, -400, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	Fade("�G�w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Three people come out of the back seat and move towards 
the open van&.

I see the person in the middle&.&.&. and yell out without 
thinking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000010a01">
"Granny!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
That small silhouette&, being restrained on both sides and  forced to walk is undoubtedly Granny!

The black-clothed men notice me and begin to run towards 
me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000020b06">
"&.&.&.Wait&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
A single person calls for them to stop&.<k>
I can't see his face because of his hood&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�w�i");

	CreateCamera("�b", 0, 200, 1000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G�w�i", 10, Center, Middle, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");

	CreateTextureSP("�b/�G�����G", 510, Center, -180, "cg/st/l/st�~�Y�L_���]_normal_l.png");
	Request("�b/�G�����G", Smoothing);
	Zoom("�b/�G�����G", 0, 500, 500, null, true);

	FadeDelete("�G��", 500, null, true);

	CreateSE("SE02","se�퓬_����_����01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

	CreateSE("SE01","se�l��_����_�ߎC��15");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
The hooded person comes closer to me&, but keeps a small 
distance and stops&.<k><?>


{	MusicStart("SE01",0,500,0,1200,null,false);}
 He pulls down his hood slowly with 
both hands&.

I look at the face under the hood&, and&.&.&.

{	Wait(300);}
My heart stops&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000030a01">
"&.&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	MoveCamera("�b", 5000, @0, 0, @0, DxlAuto, true);
	Wait(500);

	SoundPlay("@dm007a",0,450,true);//�ٔ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000040b06">
"I almost didn't think you'd come all the way out here&.
 That's just like you&, Aoba&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000050a01">
"Mizuki&.&.&. You&, why&.&.&. To Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�b");
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);
	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I'm too shocked to speak as Mizuki stares at me&. He shows 
off an almost superficial smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000060b06">
"I waited for the guys I sent to find you&, but for you to
 come all the way here&.&.&. I wonder if they were caught?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");

	CreatePlainSP("�G�ʏ�W", 5000);

	CreateColorSP("�G��z�w�i", 1100, "000000");
//	CreateTextureSP("�G��z���G", 1110, Center, 230, "cg/bu/bu�~�Y�L_�ʏ�_laugh.png");

	CreateTextureSP("�G��z���G", 1110, Center, 230, "cg/st/st�~�Y�L_�ʏ�_laugh.png");

	Request("�G��z���G", Smoothing);
	Zoom("�G��z���G", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�ʏ�W", 0, 0, null, true);
	Wait(70);
	Fade("�G�ʏ�W", 200, 1000, null, true);

	Delete("�G��z*");
	Delete("�G�ʏ�W");
*/

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");//�������u�r�d�Fse�[��_��z_�t���b�V���o�b�N01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, 0, Middle, "cg/bg/bg101021_5_���Z����ʂ藠�H�n01�h���C�W���[�X.jpg");
	St("C",1500, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(200);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);

	FadeDelete("�G�ʂQ", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
This isn't the face of the Mizuki I know&.

And he's saying all of these things with that horrible 
smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000070a01">
"What&.&.&. happened to you? Both Koujaku and I were so
 worried when Dry Juice just disappeared&.&.&."

{	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000080b06">
"Ah&, that&, huh? Listen&, Aoba&. It's amazing&. We were reborn
 as members of Morphine&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000090a01">
"Morphine&.&.&.?"

{	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000100b06">
"Yeah&. That legendary team&, you know&, that one? They're not just some group in Rib&. Being in Morphine is like being
 Gods&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000110a01">
"&.&.&.Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000120b06">
"Of course I am&. Did you think I was joking? Dry Juice is
 now an absolute being&."

{	St("C",740, @0,@0,"st�~�Y�L_���]_mad");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000130b06">
"I'm saying that now&, no other team could possibly pass
 Morphine&. Haha&, hahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Mizuki starts to laugh with a huge smile on his face&.

I can't believe he's wearing such a disturbing expression&.

The surrounding members don't move a muscle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���w�i", 1100, -780, -180, "cg/ev/l/evf02�����q�l�ÈłɘȂ�_l.jpg");
	Move("�G���w�i", 10000, -620, @0, null, false);
	Fade("�G���w�i", 500, 750, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
Does everyone here have those doll-like eyes?<k>
Is someone controlling them&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G���w�i", 500, null, true);

{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000140a01">
"Mizuki&, open up your eyes already&. This is nuts!"

{
	DeleteFw();
	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",200,true);
}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000150b06">
"Huh? What're you saying? You're the weird one&, Aoba&."

{	St("C",740, @0,@0,"st�~�Y�L_���]_cool");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000160b06">
"You never once accepted an invitation to any team&. I was
 calling out to you with all seriousness&, you know?"

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000170b06">
"Did you think that Rib was just something stupid to play?"

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000180a01">
"Of course not!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�~�Y�L_���]_cool");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000190b06">
"Then why didn't you join a team? You knew that I was
 always serious about it&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000200a01">
"&.&.&.&.&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000210b06">
"Aoba&, it's not too late&. And I'll even offer you a high
 ranked position&. Become a comrade of the reborn Dry
 Juice&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000220a01">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000230a01">
"&.&.&.Never&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I know Mizuki is completely serious when it comes to Rib&.

And that's why I always was as stern as possible when 
answering him&.

He's being strange right now&. 
He's not someone who would say these things&.


{
	St("C",740, @0,@0,"st�~�Y�L_���]_angry");
	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",200,true);
	FadeStPro("C", 1500, 200);
//	St("C",740, @0,@0,"st�~�Y�L_���]_mad");
//	FadeSt("C",200,true);
}

Mizuki listens to me with that distorted smile on his face&,and soon he lets out another eerie smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000240b06">
"&.&.&.Oh&, really&. I see&. Whatever&. I have a good idea&,
 anyway&."

{	St("C",740, @0,@0,"st�~�Y�L_���]_normal");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000250b06">
"Aoba&, you really love your grandma&, don't you?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000260a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	CreateTextureSP("�G�d�u", 1100, -200, -350, "cg/ev/l/ev069�~�Y�L�l�������_l.jpg");
	DeleteAllSt(0,true);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
Mizuki grabs Granny&, puts her in a hold&, and then puts 
something to her neck&. <k>&.&.&.It's a knife&.

I can feel the sweat drip down my back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm06/9000270b03">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000280a01">
"&.&.&.Mizuki&, stop this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	Move("�G�d�u", 800, -430, -100, DxlAuto, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000290b06">
"I will if you join my team&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000300a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�d�u�Q", 1120, -230, -290, "cg/ev/l/ev069�~�Y�L�l�������_l.jpg");
	Zoom("�G�d�u�Q", 0, 1200, 1200, null, true);
	Request("�G�d�u�Q", Smoothing);
	Move("�G�d�u�Q", 20000, 130, @0, null, false);
	Fade("�G�d�u�Q", 500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0096]
Granny's face becomes stiff and she closes her eyes&.

Seeing her put on an expression of acceptance&, I quickly 
become even more impatient&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev069�~�Y�L�l�������.jpg");
	FadeDelete("�G�d�u�Q", 300, null, true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000310a01">
"Let go of her&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000320b06">
"You really don't get it&, do you? I already told you&.
 Become part of our team&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000330a01">
"I said I won't&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000340b06">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
The irritation starts to show on Mizuki's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000350b06">
"You think I'm just bluffing? That I'm all talk? &.&.&.Fine
 then&, I'll start&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000360a01">
"Hey&.&.&."

{	DeleteFw();}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm06/9000370b06">
"Don't regret it afterwards&, after all&, you're the one who
 didn't choose to join me&."

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000380a01">
"Hey&, Mizuki! Stop!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�i�߂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u�Q", 1120, -230, -360, "cg/ev/l/ev069�~�Y�L�l�������_l.jpg");
	SetVertex("�G�d�u�Q", 820, 640);
	Zoom("�G�d�u�Q", 0, 1500, 1500, null, true);
	Request("�G�d�u�Q", Smoothing);
	Fade("�G�d�u�Q", 300, 1000, null, true);

	Zoom("�G�d�u�Q", 90000, 3000, 3000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
Mizuki pushes the tip of the knife to Granny's throat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
No&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���k�d�u", 2010, -520, -70, "cg/ev/l/ev038�k�����Ƃ݂�Ȃł���a_l.jpg");
	Request("�G���k�d�u", Smoothing);
	Zoom("�G���k�d�u", 0, 1250, 1250, null, true);
	Wait(16);
	Delete("�G��");

	Wait(20);

	CreatePlainSP("�G��", 5000);

	Delete("�G���k*");
	Wait(16);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0115]
Stop&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���k�d�u", 2010, -500, -50, "cg/ev/l/ev033�k�����������_l.jpg");
	Wait(16);
	Delete("�G��");

	Wait(30);

	CreatePlainSP("�G��", 5000);

	Delete("�G���k*");
	Wait(16);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0116]
Granny&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���k�w�i", 2010, Center, Middle, "cg/bg/bg104021_5_���t��䏊.jpg");
	CreateTextureSP("�G���k�����G", 2100, 160, -80, "cg/fu/x/fw�^�G_�ʏ�_smile_x00.png");
	Wait(16);
	Delete("�G��");

	Wait(40);

	CreatePlainSP("�G��", 5000);

	Delete("�G���k*");
	Wait(16);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0117]
Granny!!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G�F��", 4000, "000000");
	DrawTransition("�G�F��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	PrintGO("��w�i", 5000);

	CreateTextureSP("�G�����G", 110, 312, 140, "cg/bu/bu�~�Y�L_���]_cool.png");
	Request("�G�����G", Smoothing);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	SetBlur("�G�w�i", true, 2, 500, 60, false);
	Move("�G�w�i", 300, -500, -380, Dxl2, false);
	Zoom("�G�����G", 300, 2000, 2000, Dxl2, false);
	Zoom("�G�w�i", 300, 2000, 2000, Dxl2, false);
	DrawDelete("��w�i", 150, 100, null, "zoom_01_00_1", true);

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/9000390a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
My legs start running on their own&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 5000);
	FadeFFR2("�G��", 0,1000, 200, 0, 0, 20,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
I grab onto Mizuki and look into his eyes&.&.&.

&.&.&.And then&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���P�F���������͂܂���őg�ݍ��݂܂��v

	CreatePlainEX("�G��", 2000);
	Fade("�G��", 0, 500, null, true);
	Zoom("�G��", 0, 1500, 1500, null, true);
	SetBlur("�G��", true, 3, 500, 150, false);

//���ǂ���A�Ƒ傫���S���̉�
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�G��", 500, 0, null, false);
	Zoom("�G��", 3000, 1000, 1000, null, true);

//����������~�Y�L�\�I�^�~�Y�L�̐��_���E��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.Suddenly&, my vision starts to go blurry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SCRAPINSE01",2000,700,0,1000,null,true);
	DrawEffect("�G��", 5000, "Ripple", 1000, 150, null);
	Fade("�G��", 2000, 750, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
I've felt this sensation somewhere before&.&.&.

That's right&, this&.&.&.

&.&.&.In Rhyme&.

The sensation I felt when I was fighting Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DrawEffect("�G��", 5000, "Ripple", 150, 100, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
&.&.&.No&.

I've known it from even longer ago&.

Much longer&.&.&.

A long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ScrapIn("�]���\�Ia",3000);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();

	Wait(2000);

//�����t�@�C��["dm0700_scr.nss"]

}
