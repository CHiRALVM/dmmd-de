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


scene dm1240h.nss_MAIN
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
	#ev124�g����������=true;
	#ev124�g����������a=true;
	#ev124�g����������b=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1250.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB02=1;//��z�p�t���O�擾

}


scene dm1240h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}//��z��
	FadeDelete("��w�i", $ftime, null, true);

//===========================================
//�ȉ��A����
//===========================================
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	CreatePlainSP("�G��", 990);
	FadeFR2("�G��", 0, 1000, 150, 0, 0, 10, null, true);
	Delete("�G��");}
His grip throws me off balance and I fall to my knees&.

{
	St("C",740, @0,@0,"fu�g��_�ʏ�_angry");
	FadeSt("C",200,true);
}

I raise my head&, flustered&.&.&.

And when I do-

I look into Koujaku's dark&, looming eyes&.

Water drips down strands of his hair&, and some of it runs 
down his pale cheeks to his chin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000010a01">
"&.&.&.Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000020a02">
"&.&.&.Why did you do that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000030a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ�_angry4");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000040a02">
"What did you say to him?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000050a01">
"Him? &.&.&.Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 990);
	FadeFR2("�G��", 0, 1000, 150, 0, 0, 40, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Suddenly&, Koujaku takes hold of my shoulders and violently throws his weight onto me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateTextureEX("�G�w�i20", 20, 0, -500, "cg/bg/l/bg302011_5_�O���b�^�[����01_l.jpg");
	Fade("�G�w�i20", 150, 1000, null, true);

	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se����_�x�b�h_��01");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 300, 20, 50, -10, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I try to step back&, but stumble&, and I fall onto the bed 
along with Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u103", 103, Center, Middle, "cg/ev/ev124�g����������a.jpg");
	CreateTextureEX("�G�d�u102", 102, 0, -222, "cg/ev/m/ev124�g����������a_m.jpg");
	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev124�g����������.jpg");
	CreateTextureEX("�G�d�u100", 100, -500, 0, "cg/ev/m/ev124�g����������_m.jpg");
	Move("�G�d�u100", 500, 0, -222, Dxl3, false);
	Fade("�G�d�u100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000060a01">
"You're hea&.&.&. Hey&, Koujaku&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000070a02">
"You talked with him&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000080a01">
"Koujaku&.&.&.?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000090a02">
"With him&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000100a01">
"Him? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u100", 500, 0, -100, Dxl3, false);
	Fade("�G�d�u101", 500, 1000, null, true);
	Delete("�G�w�i20");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujaku takes both of his hands and roughly pushes them up my shirt&.

Who does he mean by 'him'&.&.&.?
Who is he talking about?

And Koujaku's eyes&.
I can't tell where he's looking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000110a01">
"Koujaku&, hey&.&.&. Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("�G�d�u103", 300, 1000, Dxl1, true);
	Fade("�G�d�u102", 0, 1000, null, true);

	Move("�G�d�u102", 500, 0, -283, Axl3, false);
	FadeDelete("�G�d�u103", 500, null, true);

	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000120a02">
"&.&.&.!"

Koujaku pushes his face down into my shoulders&.
At that instant&, a spark of pain courses through my body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 10, 5, -10, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000130a01">
"Ouch!"

What&.&.&.!?
Did he just bite my neck&.&.&.!?

{
	CreateSE("SE01","se�[��_��_�͂˂�04");
	MusicStart("SE01",0,500,0,1000,null,false);
}
Right after&, a wet but warm feeling creeps up in the same 
area&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000140a01">
"Wh-What are you doing&.&.&.!?"

The bite stings&, but he keeps licking it&.

I hear the sound of water and rough panting near my ear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��06");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000150a01">
"Koujaku&.&.&.! Stop it&.&.&.!"

I try to squirm out of his grip&, but he holds me down 
still&, licking my neck with his teeth bared&.

Why&.&.&.

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u102", 500, -317, -283, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000160a01">
"-Hey&.&.&.!"

He lifts up my clothes in a rush&.

Why is this happening?

What are you doing&, Koujaku&.&.&.!?

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000170a02">
"&.&.&.&.&."

Koujaku keeps licking&, and moves up to my ear&.

&.&.&.I don't have any idea what's happening&, but I'll be in 
trouble if I don't do something&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,50,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000180a01">
"Koujaku&.&.&.! Hey&, what the hell are you thinking! I said
 stop it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u102", 150, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I try to put up a serious fight&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000190a02">
"Ugh&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000200a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se����_�x�b�h_��02");
	MusicStart("SE02",0,800,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 300, 50, 30, -5, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000210a01">
"Ngh&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
As if to warn me to stop now&, Koujaku pushes me down even 
harder on the bed&.

He bites my wrist&, and I flush white because of how 
powerful he is against me&.

Koujaku&.&.&.

I look at him&, and he isn't listening to anything I say&.

Did something&.&.&. happen to him?

He looks like Koujaku on the outside&, but it's like he's a different person inside&.

&.&.&.A different person&.

My body goes cold when I realize that&.

What do I do&.&.&.!?

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000220a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u105", 105, -1020, 0, "cg/ev/l/ev124�g����������a_l.jpg");
	Move("�G�d�u105", 500, -600, -350, Dxl1, false);
	Fade("�G�d�u105", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Koujaku lets out a groan&, putting his hands up my already 
half-rolled up shirt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000230a01">
"!? Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
He runs his rough palms over my skin and rubs my chest&.

Soon a panicked sweat runs down my body with Koujaku's 
palms on my skin&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000240a01">
"Get- off&.&.&.! What the hell are you&.&.&. Ouch&.&.&.!"

{
	CreateSE("SE01","se�[��_��_�͂˂�05");
	MusicStart("SE01",0,500,0,800,null,false);
}
On both my wet neck and ear&, I can feel his hot pants&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000250a02">
"Guh&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��09");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000260a01">
"Koujaku&.&.&. Koujaku!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000270a02">
"&.&.&.&.&."


//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000280a01">
"&.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u105", 1300, 0, -500, Dxl3, false);

	CreateSE("SE02","se�[��_��_�͂˂�05");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Koujaku holds back my attempts to break free with his 
terrifying strength&, and licks all over my ear&.

All I hear is the sound of saliva glopping all over and in my ear&. I lose my ability to think&.

I try to frantically turn my head away&, but feel something awful in the lower half of my body&.

{
	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

	CreateSE("SE01","se�l��_����_�ߎC��23.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000290a01">
"&.&.&.&.&."

Koujaku puts his hands in my pants&, and then my underwear&. He holds my cock with a strong grip&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000300a01">
"Idi- ot&.&.&.Let go&, stop it&.&.&.!"

I'm completely caught&, frazzled&, and try my hardest to get away&.

But Koujaku refuses to let go&.

Why did it have to come to this?
And even with&.&.&. Koujaku?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1000, Center, Middle, "cg/bg/bg303011_5_��y�{�݊O�ϓ�������b�h.jpg");//
	St("C",1740, @0,@0,"bu����_�ʏ�_normal");
	FadeSt("C",0,true);

	Delete("�G�d�u105");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�����H�F��z
//�y����z
<voice name="����" class="����" src="voice/dm12/4000310b05">
"But you should be careful&. You're a little too
 defenseless&. If you're not&, something you take for
 granted will&.&.&.Chomp!"

{	St("C",1740, @0,@0,"bu����_�ʏ�_smile");////_pride
	FadeSt("C",200,true);}
//�����H�F��z
//�y����z
<voice name="����" class="����" src="voice/dm12/4000320b05">
"They might just gobble you up&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
What that man in the kimono said to me comes to mind&.

Why&.&.&.
Why is this happening&.&.&.

What's wrong with Koujaku?
I don't know&. I don't understand&.

I honestly&.&.&.
Don't know anything about Koujaku&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�Q
//�����o�F������Ɠ��ɂ�����
$HALevel=2;
	HAFade(100, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000330a01">
"&.&.&.Ugh&."

A sharp pain suddenly rushes to my head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�Q
//�����o�F������A������Ɠ���
	HAFade(100, 0,true);
	HAFade(100, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
My head&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,40,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0134]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0135]
A violent headache rushes in&, and I hear someone's voice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,-240,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0136]
�@�\�\�\�\�@Quickly�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0137]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.I don't want to&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,-240,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
�@�\�\�\�\�@Destroy him�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
No&.
Never&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�d�u110", 110, -269, -479, "cg/ev/l/ev124�g����������a_l.jpg");
	CreateTextureSP("�G�d�u111", 111, -279, -272, "cg/ev/m/ev124�g����������a_m.jpg");

	Fade("�G�d�u", 0, 0, null, true);
	Fade("�G�����B", 0, 0, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Move("�G�d�u111", 1000, -162, -284, Dxl3, false);

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0143]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000340a02">
"&.&.&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��16");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000350a01">
"Ah&.&.&.!"

Koujaku starts to violently jack me off&.

It feels somewhat good&, but it's more mortifying than 
anything&.

No more&.&.&.

No more of this&.&.&.

This is just too awful&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u110", 500, -269, -579, Dxl3, false);
	Move("�G�d�u111", 500, -162, -184, Dxl3, false);
	FadeDelete("�G�d�u111", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0144]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000360a01">
"No&, stop it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,40,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	$HALevel=2;

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,900,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,900,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
I don't want to destroy anything&.
But&, I&.&.&.

I'm going to at this rate&.
If this keeps going on&.

But I don't want to&. Why&.

I don't want this&.

Stop&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�������t�U�f������", 0, 1000, null, true);
	TemptationAobaSet("�G�������t�U�f",1100,-501,205,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",3000,3000);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	DrawTransition("�G�������t�U�f���B", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0159]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,-1415,-670,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	DrawTransition("�G�������t�U�f���B", 1, 0, 250, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,1400,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
�@�\�\�\�\�@Destroy him�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
Stop it&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	TemptationDelete("@�G�������t�U�f���B");

	CreateTextureSP("�G�d�u111", 111, -269, -579, "cg/ev/l/ev124�g����������b_l.jpg");
	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000370a01">
"&.&.&.Stop it&, Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

$HALevel=2;

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("�G�F��", 2000, "FFFFFF");
	Fade("�G�F��", 50, 0, null, true);
	Wait(10);
	Fade("�G�F��", 50, 1000, null, true);
	FadeDelete("�G�F��", 100, null, true);

	CreatePlainSP("�G��", 990);
	Zoom("�G��", 1000, 1500, 1500, null, false);
	FadeDelete("�G��", 300, null, true);
	FadeDelete("�G�d�u*", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0163]
I muster enough strength to scream&, and for some reason 
Koujaku stops&.

But why&, just up until a second ago he wasn't listening&.&.&.

I focus on Koujaku's eyes&, and he finally recognizes me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i20", 20, 0, -500, "cg/bg/l/bg302011_5_�O���b�^�[����01_l.jpg");
	Fade("�G�w�i20", 500, 1000, null, true);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0164]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000380a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0169]
Koujaku looks down to me&, and becomes startled when he 
sees the state I'm in&.

His mouth just opens and closes&, as if he's trying to spit words out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000390a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
The face I just saw&.&.&.
I raise my now free right hand up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm12/4000400a02">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
I turn away and punch Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0174]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000410a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0175]
I'm taken aback just from hitting him&.

Shit&.&.&.
My hand just happened to slip&. Sorry&.

I stop before I can&.&.&. even say it&.

My right hand shivers from the hit&, so I clutch onto it 
with my free one&.

I'm unsure why&, but I just hit him&.

I was just about to explode&, and my body just&.&.&.

I want to apologize&.
But I can't&.

He can take&.&.&. at least that much&.

Koujaku&.&.&.
Why did you do that&.&.&.?

A number of questions swirl in my head&, but none of them 
come out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i20", 500, null, true);

	St("C",740, @0,@0,"st�g��_�ʏ�_think");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
I look at Koujaku for some answer&.

Whatever is fine&. I just want to hear him say something&.

Whether he's angry or about to complain&.

Anything is fine&, so just say something&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
&.&.&.But&.

Koujaku pushes his lips together&, and doesn't say anything&.

The cheek I just hit slowly turns red&.

The unwanted silence just piles up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000430a01">
"&.&.&. Why&.&.&.Why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
I start to shiver&, about to cry at the end of my sentence&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/4000440a01">
"&.&.&.Why aren't you saying anything&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_think2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0194]
The sadness keeps pooling up inside of me&.

No matter what I do&, I can't get through to him&.
I can't understand&. I'm unable to&.

We separate&.&.&. just like that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,400,0,1400,null,false);

	CreateSE("SE02","se�l��_����_����06");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
Koujaku makes an awful frown and closes his eyes; he then 
slowly turns his back to me&.

{
	CreateSE("SE02","se����_�h�A��_���J��01");
	MusicStart("SE02",0,700,0,1000&,null,false);
}

And like that&, he simply leaves the room without a word&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//��z��
		TextBoxDelete(0);
		SetVolumeEX("@dm*", 1000, 0, null);
		ClearFadeAll(1000, true);Wait(2000);
	}

//�����t�@�C��["dm1250.nss"]

}
