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
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev453クリアとH挿入前=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4533h.nss";

}


scene dm4532h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 100, 0, -574, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	FadeDelete("上背景", 0, null, true);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000770a04">
"! Aoba-san&, I'll do that-"

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000780a01">
"It's fine&. I don't want you to move too much&. So I'll do
 it&."

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000790a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ04");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0232]
I loosen up his boxers and slide them off&.

His penis is exactly like a human's&.
And it's even hard&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
Watching me&, Clear flashes me a small smile&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000800a04">
"&.&.&.Does it surprise you?"

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000810a01">
"No&, well&.&.&. kind of&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000820a04">
"I believe it reacts exactly like a human's&.&.&. although
 I've never tested it&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000830a04">
"Toue also said this earlier&, but we were made to fit into
 the human lifestyle so we could manipulate them&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000840a04">
"Although we can have sex&, we are not able to reproduce&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000850a01">
"I see&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
I take Clear's dick into my hands&.

I hold it&, and gradually&.&.&. put the tip into my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000860a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
Clear grows even bigger as I bring him deeper down my 
throat&, then quickly pull back out&.

I do it over and over again&, and each time Clear's cock 
swells up even more&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵ＥＶ100", 100, 0, 0, "cg/ev/m/ev453クリアとH挿入前_m.jpg");
	Move("絵ＥＶ100", 1500, -293, -214, Dxl1, false);
	Fade("絵ＥＶ100", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000870a01">
"Fhm&.&.&.Un&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000880a04">
"Hah&.&.&.Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0262]
While working at the base of his dick with my hands&, my 
head bobs up and down as I lick the full length of his 
shaft&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0263]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000890a01">
"Ngh&, nn&.&.&.&.Mn!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000900a04">
"Ahh&.&.&. Ngh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1400,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
Clear's hand rests on my shoulder&, and he moves to 
clumsily pet my head&.

I can feel a strange sensation in my hair&, but Clear makes it feel good&.

I look up to his face&, his dick still in my mouth&, and see Clear panting&, his face completely red&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ100", 500, -395, -75, Dxl1, false);

	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev453クリアとH挿入前.jpg");
	Fade("絵ＥＶ101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000910a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0273]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000920a04">
"Haah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000930a01">
"Mn&.&.&.Ngh&.&.&.Uhn&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
Something wet fills my mouth&. When I pull away&, a 
transparent liquid oozes out of the tip of his hard cock&.

All the way to that point&.&.&.
So even stuff like semen could come out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,400,0,1400,null,false);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0282]
I try to enhance the feeling even more&, and raise my face 
from Clear's cock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4533h.nss"]

}
