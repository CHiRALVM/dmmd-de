//<continuation number="340">
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


scene dm4160.nss_MAIN
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4170.nss";

}


scene dm4160.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm003",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000010a01">
"Hey&, wait!"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000020a04">
"Hello&, excuse me for a minuteee!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I see a person by an entrance&, and get upset once again&.

That's&.&.&.

{	SetVolumeEX("@dm*", 2000, 0, null);}
There are scars all over that sketchy guy!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000030a01">
"Wait&, Clear!"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000040a04">
"Excuse meeee! There's something I'd like to ask youuuuu!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000050e42">
"Huh?!"

{	Fw("fwmチンピラB_通常_normal");}
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm41/6000060e43">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The group of hoodlums react to Clear's yelling&.
Oh shit! I need to stop him&.&.&.!

I'm in a panic as Clear walks up close to the gang of 
hoodlums&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000070a04">
"Do you have any idea of how someone would get into the
 tower?"

{	Fw("fwmチンピラA_通常_normal");}
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000080e42">
"Tower? Hey&, you might want to show some damn manners when
 you ask someone a question&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//	ClearComicNext(21000,461,-4,14);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】※漫符：クエスチョン
<voice name="クリア" class="クリア" src="voice/dm41/6000090a04">
"Manners? As in an introduction?"

{	Fw("fwmチンピラB_通常_normal");}
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm41/6000100e43">
"Are you fucking around? Hand me some cash if you have
 some&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000110a04">
"Money? I don't hand money over to people I've just met and don't even know their names&."

{	Fw("fwmチンピラB_通常_normal");}
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm41/6000120e43">
"Whaaa?"

{	Fw("fwmチンピラA_通常_normal");}
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000130e42">
"Don't give me any fuckin' lip!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//	ClearComicNexDelete();

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000140a01">
"Stupid&.&.&.! Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景5000", 5000, -243, -572, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景5000", 300, @-100, @50, Dxl1, false);
	Fade("絵背景5000", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
A vein pops out of one of the hoodlum's forehead&, and he 
suddenly raises one of his arms up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000150a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
He's going to hit him&.&.&.!

&.&.&.At least&, I thought he would&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",0,true);

	Move("絵背景5000", 300, @-100, @50, Dxl1, false);
	FadeDelete("絵背景5000", 300, null, true);

	Shake("@StNameC/C*", 2300, 1, 1, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000160a04">
"You mustn't use violeeennnnceee!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_打撃_風切り高01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");

	Fade("絵色白", 0, 1000, Axl3, true);
	DrawTransition("絵色白", 150, 0, 1000, 100, Dxl1, "cg/data/circle_01_00_0.png", true);

	Wait(50);
	DeleteSt("C", 0,true);

	FadeDelete("絵色白", 100, Dxl2, true);

	CreateSE("SE01","se擬音_打撃_ギャグヒット01");
	MusicStart("SE01",0,800,0,1000,null,false);

	Wait(300);

	Fw("fwmチンピラB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm41/6000170e43">
"Ugh!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000180a01">
"Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Clear puts up both of his hands and they buzz around&, 
hitting the man's face until he falls down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000190e42">
"Motherfucker&, what are you doin'!?"

{	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000200a04">
"You musn't resort to violence!"

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000210a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000220c05">
"Hey&, what're you doin'?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
A voice comes from behind the hoodlums&, and a neurotic 
looking man with glasses on walks towards us&, swaying&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000230e42">
"This guy just&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
The glasses man looks to Clear&, glances at the fallen 
hoodlum&, and then back to us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000240c05">
"Which one of you did this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/6000250e42">
"The gas mask guy did&."

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000260c05">
"Oh&, I see&. This boy here is one of mine&. You're causing
 me trouble by hurting him&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000270a04">
"He was the one who swung at me first&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000280c05">
"&.&.&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);

	DeleteFw();
	DeleteSt("C", 200,true);

//	SetVolumeEX("SE*", 500, 0, null);

	FwPro("fw蒼葉_通常_rage",2700,"fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000290a01">
"Clear&, don't say anything&. Excuse us&, we made a mistake&.
 We're truly sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
I hold onto Clear's arm&, and bow our heads to the yakuza&.

But&, I guess you could say&.&.&.&. it actually was a mistake&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000300c05">
"It'd be nice to end it with an apology&, it really would&,
 but I can't just leave it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateTextureEX("絵背景100", 100, -501, -463, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景100", 300, -752, -463, Dxl3, false);
	Fade("絵背景100", 300, 1000, null, true);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_動作_掴む01");
	MusicStart("SE03",0,500,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000310a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
The man with the glasses walks briskly towards us and 
suddenly throws me to the ground&. I stumble over and he 
goes after Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/6000320a04">
"Master! Are you alright!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/6000330a01">
"Yeah&, I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/6000340c05">
"Master? Are you some sorta bar keeper? Aren't you both a
 little too into it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4170.nss"]

}
