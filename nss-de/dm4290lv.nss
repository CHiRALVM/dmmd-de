//<continuation number="240">
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


scene dm4290lv.nss_MAIN
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
	#ev429���t�؂��؂��N���A=true;
	#ev429���t�؂��؂��N���Aa=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4300.nss";

}


scene dm4290lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301081_5_�v���`�i�W�F�C������ʂ�");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);

	CreateTextureEX("�G�d�u100", 100, -304, -569, "cg/ev/l/ev429���t�؂��؂��N���A_l.jpg");
	Move("�G�d�u100", 1000, -304, -485, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000020a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
This is the first time I've ever seen Clear's real face&.

I'm completely absorbed by the sight of his face&. It's 
completely clean&, without a single wound on it&.

So he wasn't hurt from the sulfuric acid&.&.&.

Besides&.&.&.

Why does he think he has a weird face&, one different from 
a human's?

It's not weird at all&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev429���t�؂��؂��N���A.jpg");
	Move("�G�d�u100", 1000, -304, -365, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Actually&.&.&.

It may be only an opinion from another man&, but I find him beautiful&, in a way&.

Clear takes the look on my face as one of disgust and 
grows a terrified expression as he turns away&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000030a04">
"&.&.&.So it really is strange&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�N���A�̈�l�́u�l�v�i���q
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000040a01">
"No&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000050a01">
"It's not strange at all&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000060a04">
"Is it good?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000070a01">
"Eh?"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000080a04">
"Is my face&.&.&. just as good? Is it the same as yours&,
 Master?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Rather than with words&, I answer him by raising my hand to his face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u102", 102, -130, -157, "cg/ev/m/ev429���t�؂��؂��N���A_m.jpg");
	Move("�G�d�u102", 1000, -187, -198, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000100a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000110a01">
"It's okay&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I quietly reassure Clear&, lightly touching the side of his face&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000120a01">
"It's fine&. Your eyes&, your nose&, your mouth&.&.&. They're
 all the same as mine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
As I talk&, I trace the lines of his face with my 
fingertips&.

From his eyes&, to the bridge of his nose&, to his pale lips&.

Two moles lightly dot the smooth&, scarless skin above his 
chin&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000130a04">
"&.&.&.I'm the same?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000140a01">
"We're the same&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u103", 103, -187, -198, "cg/ev/m/ev429���t�؂��؂��N���Aa_m.jpg");
	Fade("�G�d�u103", 800, 1000, Dxl1, true);
	Delete("�G�d�u102");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Clear hesitantly brings his hands up to me and touches my 
face&.

He slides his fingers around my eyes&.
When I close them&, his touch slowly runs over my eyelids&.

His fingertips then slide down the bridge of my nose to my lips&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Clear takes a deep breath and lightly pats my cheeks and 
around my chin like a child&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000150a04">
"The same&.&.&. I'm the same as Master&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000160a01">
"And I don't mean that we have the same face&. Just that
 they're made the same way&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000170a04">
"Master&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Clear looks at me with watering eyes&, as if he's about to 
break down crying&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u104", 104, Center, Middle, "cg/ev/ev429���t�؂��؂��N���A.jpg");
	Move("�G�d�u103", 1000, -237, -198, Dxl1, false);
	Fade("�G�d�u104", 1000, 1000, Dxl1, true);
	Delete("�G�d�u103");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000180a04">
"Please tell me again&. Tell me I look just like you&,
 Master&. Please&. Say it again&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000190a01">
"We're the same&. You don't look weird or strange anywhere&.
 Everything's all the same as mine&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000200a04">
"Really?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000210a01">
"Really&."

{
	CreateTextureEX("�G�d�u105", 104, -423, -185, "cg/ev/l/ev429���t�؂��؂��N���A_l.jpg");
	Move("�G�d�u105", 1000, -423, -251, Dxl1, false);
	Fade("�G�d�u105", 1000, 1000, Dxl1, true);
	Delete("�G�d�u104");

}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000220a04">
"&.&.&.Thank you&, very much&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u*", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Almost crying&, Clear smiles at me and looks down&.

{
	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,700,0,1200,null,false);
}
He looks so forlorn that I softly grab his head&.

I pet and fluff up his hair&.

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/9000230a01">
"Since you took off your mask&, go and actually wash your
 face&. I don't see anything wrong&.&.&. but it'll be bad if
 something happens later&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/9000240a04">
"Yes&.&.&."

Clear nods&.

{
	DeleteAllSt(200,true);
}
In a single second&, millions of questions burned up inside of me&.

It must've been due to the gas mask that Clear's face was 
unhurt&.

But what about the rest of him?

He was kicked around by the yakuza earlier&, but he 
doesn't look hurt at all&.

He might just be enduring it&, but I don't think he is&.

Then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i110", 110, -521, -125, "cg/bg/l/bg301081_5_�v���`�i�W�F�C������ʂ�_l.jpg");
	Move("�G�w�i110", 800, -521, -57, Dxl1, false);
	Fade("�G�w�i110", 800, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
&.&.&.A ridiculous thought comes to mind&.

Something that no one would ever think&.

It couldn't be possible&.

But when I look at Clear&, I realize that the idea isn't 
completely impossible&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
It's just a thought&, but maybe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1500, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
&.&.&.Clear isn't human&.



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

//�����t�@�C��["dm4300.nss"]

}
