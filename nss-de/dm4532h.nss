//<continuation number="1850">
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


scene dm4532h.nss_MAIN
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
	#ev453�N���A��H�}���O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4533h.nss";

}


scene dm4532h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm015",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureEX("�G�w�i100", 100, 0, -574, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	Fade("�G�w�i100", 500, 1000, null, true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�N���A_���ʕ���_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000770a04">
"! Aoba-san&, I'll do that-"

{
	Fw("fw���t_�ʏ�_serious");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000780a01">
"It's fine&. I don't want you to move too much&. So I'll do
 it&."

{
	Fw("fw�N���A_���ʕ���_normal2");
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000790a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��04");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0232]
I loosen up his boxers and slide them off&.

His penis is exactly like a human's&.
And it's even hard&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
Watching me&, Clear flashes me a small smile&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʕ���_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000800a04">
"&.&.&.Does it surprise you?"

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000810a01">
"No&, well&.&.&. kind of&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�N���A_���ʕ���_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0242]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000820a04">
"I believe it reacts exactly like a human's&.&.&. although
 I've never tested it&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000830a04">
"Toue also said this earlier&, but we were made to fit into
 the human lifestyle so we could manipulate them&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000840a04">
"Although we can have sex&, we are not able to reproduce&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000850a01">
"I see&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
I take Clear's dick into my hands&.

I hold it&, and gradually&.&.&. put the tip into my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0252]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000860a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0253]
I can hear him holding his breath&.
Does he feel it like humans do?

He did say that he's never tested it before&.&.&.

So does that mean that I'm the first person to have 
touched him like this?

My heart beats wildly thinking about it&.
Of course&, I've never given someone head before&. 

But I wanted to do anything and everything for Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
Clear grows even bigger as I bring him deeper down my 
throat&, then quickly pull back out&.

I do it over and over again&, and each time Clear's cock 
swells up even more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("�G�d�u100", 100, 0, 0, "cg/ev/m/ev453�N���A��H�}���O_m.jpg");
	Move("�G�d�u100", 1500, -293, -214, Dxl1, false);
	Fade("�G�d�u100", 1500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0261]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000870a01">
"Fhm&.&.&.Un&.&.&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000880a04">
"Hah&.&.&.Ah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0262]
While working at the base of his dick with my hands&, my 
head bobs up and down as I lick the full length of his 
shaft&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0263]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000890a01">
"Ngh&, nn&.&.&.&.Mn!"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000900a04">
"Ahh&.&.&. Ngh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,1400,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
Clear's hand rests on my shoulder&, and he moves to 
clumsily pet my head&.

I can feel a strange sensation in my hair&, but Clear makes it feel good&.

I look up to his face&, his dick still in my mouth&, and see Clear panting&, his face completely red&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u100", 500, -395, -75, Dxl1, false);

	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev453�N���A��H�}���O.jpg");
	Fade("�G�d�u101", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000910a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0272]
It makes me get a little giddy&, knowing that he's 
feeling it&.

I want to let him feel more&.
I want him to feel me&.

Clear's cock is all the way down my throat&, and I pull 
back to squeeze on him more&.

The hand that was petting my hair goes stiff&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0273]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/3000920a04">
"Haah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/3000930a01">
"Mn&.&.&.Ngh&.&.&.Uhn&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0281]
Something wet fills my mouth&. When I pull away&, a 
transparent liquid oozes out of the tip of his hard cock&.

All the way to that point&.&.&.
So even stuff like semen could come out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se�[��_��_�͂˂�04");
	MusicStart("SE02",0,400,0,1400,null,false);

	FadeDelete("�G�d�u*", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0282]
I try to enhance the feeling even more&, and raise my face 
from Clear's cock&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4533h.nss"]

}
