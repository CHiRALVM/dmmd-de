//<continuation number="380">
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


scene dm1270.nss_MAIN
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
	#bg303031_5_��y�{�ݗ���̕���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1280.nss";

}


scene dm1270.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg303031_5_��y�{�ݗ���̕���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//����ʓ]���i����̕����j

//�����Ƃ�A�ƃ}�O�J�b�v���e�[�u���ɒu��
	CreateSE("SE01","se����_�O���X_�u��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000010b05">
"Go ahead&."

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000020a01">
"&.&.&.Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SoundPlay("@dm012",0,450,true);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
There are white teacups placed on top of the black table&.

In the cups are a light&, brown liquid with an assortment 
of lower petals; they're floating in the water and emit 
an amazingly fragrant scent&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000030b05">
"Isn't it nice? I specially placed an order for these&, you
 can't buy them in Japan&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I take one sip&, and the fragrance floats up to my nose&. 
The flower petals swing around in a lovely sort of way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000040a01">
"&.&.&.It's good&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw����_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000050b05">
"That's good to hear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021a]
Ryuuhou brings another teacup and sits down across the 
table from me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021b]
I watch his ever constant smile&, and then turn my eyes 
away&.

Once I agreed to go with Ryuuhou&, we went inside the club&.

The dance floor and bar were on the first floor&, a tattoo 
parlor and dressing rooms on the second floor&, and a staff room on the third&.

His room was on the third floor&, and it felt as if there 
was no one who quite compared to Ryuuhou&.

The room had a Japanese style&, but the furniture was 
European so it was a mix of cultures&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 250, -100, Middle, "cg/bg/l/bg303031_5_��y�{�ݗ���̕���_l.jpg");

	Move("�G�w�i", 1500, 0, @0, AxlDxl, false);
	FadeDelete("�G��", 1500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I found my eyes wandering to various papers of tattoo 
designs around the room&.

It was a strange sight in such a dim room&, so it felt a 
little odd to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000060a01">
"Are those pictures&.&.&."

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000070b05">
"Yes&, I'm a tattoo artist&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000080a01">
"Really&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
So that's why it smells a bit like ink in here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���o�w�i", 300, Center, Middle, "cg/bg/bg105011_1_�h�X�^�W�I���r�[.jpg");

	CreateColor("�G���o��z", 1001, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o��z","�G���o��z");
	Request("�G���o��z", OverlayRender);
	CreateTextureSPmul("�G���o��z��", 1002, Center, Middle, "cg/ef/effi��z01.jpg");

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_laugh");
	FadeSt("C",0,true);
	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
A tattoo artist&, huh&.&.&.
Mizuki was one too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	Delete("�G��*");

	FadeDelete("�G��", 1000, null, true);

	Wait(1000);

	CreateColorEX("�G�F��", 5000, "000000");

	Move("�G�w�i", 1000, @-100, @0, Axl1, false);
	Fade("�G�F��", 1000, 1000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
I feel a faint pain in my chest and take my eyes away&.

{
	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 600, @100, @0, Dxl1, false);
	Wait(100);
	FadeDelete("�G�F��", 500, null, true);
}
&.&.&.Hm?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G��/�G�w�i", 500, 145, -260, "cg/bg/l/bg303031_5_��y�{�ݗ���̕���_l.jpg");
	Request("�G��/�G�w�i", Smoothing);
	Zoom("�G��/�G�w�i", 0, 1200, 1200, null, true);

	CreateColorEX("�G�F��", 300, "000000");
	Fade("�G�F��", 0, 300, null, false);
	CreatePlainSP("�G��", 300);
	SetShade("�G��", MEDIUM);

	FadeDelete("�G��", 100, null, false);
	OpenTateMask("�G��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Delete("�G�F��");
	Delete("�G�w�i");

	Wait(500);

//�������u���F������Ɣw�i�ɒ��ڂ�����v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
That design&.&.&.
I feel like I've seen it somewhere before&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G��", 200, null, false);
	CloseTateMask("�G��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000090b05">
"Aoba-kun&, do you have an interest in tattoos?"

{
	DeleteFw();
	FadeDelete("�G�w�i", 500, null, true);

	FwPro("fw���t_�ʏ�_shock",800,"fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000100a01">
"Eh? Uh&, sort of&.&.&. but not enough to actually get one&."

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000110b05">
"You seemed a bit enthusiastic&. If you have any requests&,
 I'd be happy to do them for you&."

{
	FwPro("fw���t_�ʏ�_shock2",2500,"fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000120a01">
"Oh no&, that'd be&.&.&. Actually-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000130b05">
"Hm?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000140a01">
"Why would you go so far to&.&.&. why are you being so kind to me?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I ask what I've been thinking about non-stop for a while 
now&.

Ryuuhou looks to the ceiling&, thinking to himself&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000150b05">
"I had some interest in you at first glance&. Or in simple
 terms&, love at first sight&, I guess you could say&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000160a01">
"&.&.&.&.&."

{	Fw("fw����_�ʏ�_smile");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000170b05">
"I mean that as a joke&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�O���X_�e��01");
	MusicStart("SE01",400,500,0,1200,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
He smiles at my reaction as he grips his teacup&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000180b05">
"You must think that's a suspicious thing to say&. To be
 frank&, I felt that you were different from others&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000190a01">
"&.&.&.&.&."

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000200b05">
"That I didn't mean as a joke&. When I saw you&, I felt that
 you had some sort of power&.&.&. you were overflowing with
 vitality&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000210a01">
"&.&.&.Okay&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
Somehow the conversation topic has turned to a mystical 
mumbo-jumbo direction&.

But Ryuuhou speaks with a serious expression&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw����_�ʏ�_normal",10000,"fw����_�ʏ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000220b05">
"I felt a force from you&. And not just one&. Reason&,
 protection&.&.&. destruction&."

{	Fw("fw����_�ʏ�_normal");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000221b05">
"There's a mixture of those separate purposes within you&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000230a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
&.&.&.Destruction&. The urger to destroy&.

Granny said the same thing about my power&.

Just as Koujaku said&, this guy&.&.&.

{	SoundPlay("@dm006",0,450,true);}
Ryuuhou looks into my eyes and his smile has faded away&.

I cast my gaze down&, feeling uneasy&, and then put my 
teacup to my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The now lukewarm tea goes down my throat&, and I start to 
calm down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000240b05">
"Was I right?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000250a01">
"&.&.&.&.&."

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000260b05">
"But I don't want you to misunderstand&, I'm not trying to
 delve too deep into you&. That would be unrefined&."

{	Fw("fw����_�ʏ�_smile");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000270b05">
"Rather than a rose-colored over-simplified concept&, I'd
 have it be difficult and extremely complex&. Just like for
 tattoos&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, 0, Middle, "cg/bg/l/bg303031_5_��y�{�ݗ���̕���_l.jpg");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
Ryuuhou looks at his decorations on the walls&, and touches his design sketches lovingly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000280b05">
"They may only look like rough drafts&, but all of these
 have been made with precise calculations in mind&."

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000290b05">
"I get absorbed when I do tattoos&. Gliding down the skin&,
 distorting&, circling&, extending&, blurring&, and even the
 variation in colors&."

{	Fw("fw����_�ʏ�_normal");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000300b05">
"Skin is a rugged thing&. Wouldn't you understand if you've
 seen blood run down it?"

{	Fw("fw����_�ʏ�_pride");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000310b05">
"When something unexpected occurs&, as well&. There's no part of a person that can't warp&."

{	Fw("fw����_�ʏ�_serious");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000320b05">
"That's why&, when I add ink&, I feel like I'm adding life to them through that piercing needle&."

{	Fw("fw����_�ʏ�_normal");}
//�y����z
<voice name="����" class="����" src="voice/dm12/7000330b05">
"I give even more texture to their skin&. And it must be a
 respectable work&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("�G�w�i", 500, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
He talks about it with a loving tone&, and his gaze turns 
back on me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
He&.&.&.

After hearing him say that&, I feel even more disturbed as 
I've seen some of his true colors show&. 

I always thought his smile was just part of an act&.&.&.

But when he spoke about tattooing&, his expression made him seem like an entirely different person&.

He has a strange attachment to tattoos&.

And that was likely Ryuuhou's real face&.

That wasn't a normal conversation&. But he seemed very 
happy when he spoke about it&.

Ryuuhou's eyes&.&.&. How do they look at people?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 1000);
	Zoom("�G��", 0, 1150, 1150, null, true);
	SetShade("�G��", SEMIHEAVY);
	MoveFFP1("@�G��",30000);
	Fade("�G��", 2000, 1000, null, true);
	Wait(500);
	Fade("�G��", 1000, 0, null, true);

//�������u���o�F�������H�F�ȍ~�̗���ɂ܂ǂ�݌��ʂ��悹��v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0108]
&.&.&.My eyelids suddenly feel heavy&. My eyesight goes blurry&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0109]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000340b05">
"I have genuine interest in you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G��", 1000, 0, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Ryuuhou's words swell in my ears&, and mix together&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 1500, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(300);

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
I can't&.&.&. open my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 1000);
	Zoom("�G��", 0, 1200, 1200, null, true);
	SetShade("�G��", HEAVY);
	MoveFFP1("@�G��",30000);
	Fade("�G��", 2000, 1000, null, true);
	Wait(500);
	Fade("�G��", 1000, 1000, null, false);
	Fade("�G�F��", 1000, 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000350b05">
"Your individual purposes conflict with each other inside
 of you&, and eventually all that's holding you together
 will be unfastened&."

//�y����z
<voice name="����" class="����" src="voice/dm12/7000360b05">
"That's the fate you're burdened with&. There's no option
 for coexistence&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 3000, 300, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
My fate&.&.&.

I'm soon unable to lift my eyelids&, and my thoughts are 
drowned out by tiredness&. I can't think of anything&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 2000, 800, null, true);
	Wait(300);
	Fade("�G�F��", 150, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0116]
This awful drowsiness&.&.&.&. I see&.
That tea&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0119]
//�y����z
<voice name="����" class="����" src="voice/dm12/7000370b05">
"I bet my life on tattoos&, and now you&. If I put the two 
 together&, I wonder what it would give birth to&.&.&.
 Interesting&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/7000380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 0, 1000, null, true);
	MoveFFP1stop();

	DeleteSt("C", 0,true);
	Wait(500);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
By the time I realize it&.&.&. it's already too late&.

Unable to fight off the drowsiness&, my consciousness fades&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(3000);

//�����t�@�C��["dm1280.nss"]

}
