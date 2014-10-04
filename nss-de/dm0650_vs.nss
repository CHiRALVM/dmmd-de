//<continuation number="160">
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


scene dm0650_vs.nss_MAIN
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
	#evf02モルヒネ暗闇に佇む=true;
	#ev900蒼葉蹴り汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0650sl.nss";

}


scene dm0650_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -515, -485, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/5000010a04">
"Isn't this exciting?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000020a01">
"It sounds like you think this is a game&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/5000030a05">
"&.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se物体_ドア鉄_扉開く強く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_00_0.png", true);

	Delete("絵背景*");

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
On Mink's signal&, Koujaku opens the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	CreateColorSPover("絵黒幕1200", 1200, "BLACK");

	CreateTextureSP("絵ＥＶ1100", 1100, Center, Middle, "cg/ev/evf02モルヒネ暗闇に佇む.jpg");
	CreateTextureSP("絵ＥＶ1101", 1101, -59, -140, "cg/ev/l/evf02モルヒネ暗闇に佇む_l.jpg");
	FadeDelete("絵黒幕", 1000, null, false);

	Wait(500);

	CreateSE("SE10","se擬音_効果_キーン01");
	MusicStart("SE10",2000,200,0,100,null,false);

	FadeDelete("絵黒幕1200", 3000, null, true);

	Wait(500);

////――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0015]
////【モルヒネ】
////<voice name="モルヒネ" class="モルヒネ" src="voice/dm06/5000040e54">
////「……！」
//
//
//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
&.&.&.There was a crowd of black-clothed people in a room that was otherwise empty&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Are these guys&.&.&. part of Morphine?

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,800,0,900,null,false);
	CreateSE("SE03","se人体_動作_衣擦れ02");
	MusicStart("SE03",0,600,0,1100,null,false);
	CreateSE("SE04","se人体_動作_衣擦れ02");
	MusicStart("SE04",0,800,0,1300,null,false);
	SetVolumeEX("SE10", 200, 0, null);
	SetVolumeEX("SE*", 800, 0, null);

	Move("絵ＥＶ1101", 300, @-200, @0, Dxl1, false);
	FadeDelete("絵ＥＶ1101", 300, null, true);
}
All of them turn around and see us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒3000", 3000, "000000");
	DrawTransition("絵色黒3000", 200, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", true);

	Delete("絵ＥＶ1100");

	CreateSE("SE10","se戦闘_動作_突進複数01");
	MusicStart("SE10",0,700,0,600,null,false);
	CreateSE("SE12","se人体_足音_走る03複数");
	MusicStart("SE12",1000,700,0,700,null,false);
	CreateSE("SE13","se人体_足音_走る03複数");
	MusicStart("SE13",1000,700,0,600,null,false);

	DrawDelete("絵色黒3000", 200, 100, null, "zzex_circle_01_00_1", true);

	SoundPlay("@dm009",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.Then they all run full-speed towards us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000050a01">
"! They're coming!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",740, @0,@0,"st紅雀_戦闘素手_pride");
	FadeSt("ML",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/5000060a02">
"Don't go over there! Hey! Come over here!!"

{
	DeleteAllSt(180,true);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",740, @0,@0,"stミンク_戦闘_normal");
	FadeSt("MR",180,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/5000070a05">
"&.&.&.&.&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",180,true);
	ClearComicNext(20001,393,-22,26,"st");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/5000080a04">
"Waaaaah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,800,null,false);

	ClearComicNexDelete();
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
Koujaku and Mink head forward first and cut through the 
crowd&.

I follow&, with the indecisive Clear close behind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm紅雀チームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm06/5000090e47">
"Koujaku-san!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE13","se人体_足音_走る03複数");
	MusicStart("SE13",1000,700,0,700,null,false);
	SetVolumeEX("SE13", 3000, 0, null);

	CreateSE("SE乱闘","se環境_戦闘_乱闘01L");
	MusicStart("SE乱闘",5000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I hear footsteps behind us&. It's the Beni-Shigure group&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st紅雀_戦闘素手_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/5000100a02">
"Uryah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	DeleteSt("C", 0,true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Koujaku exchanges looks with his members and knocks down 
the black-clothed people one by one&.

Mink silently fights them with his fists&, taking two&, even three members down at once&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	BGPlainShake(50,300,20,2,0,0,1000,null,false);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	FwPro("fw蒼葉_通常_rage",1000,"fw蒼葉_通常_pain");
//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000110a01">
"There! &.&.&.!" 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
I go to get some black-clothed guys as well&, but I can't 
avoid one of them and an elbow hits my chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro2("fw蒼葉_通常_pinch",1550,"fw蒼葉_通常_shock2",1200,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000120a01">
"Owowow&.&.&.&. Uwah&, you little-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainEX("絵板写", 50);

	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(30);
	Shake("絵板写", 300, 10, 4, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, null, true);

	Wait(150);

	Fade("絵色白", 0, 1000, null, true);
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(30);
	Shake("絵板写", 300, -4, 10, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He immediately pulls his fists back for another hit&, but I stop him with my arm&.

But then he starts to rapidly pound with his other fist&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵板写");

	FwPro("fw蒼葉_通常_rage",2050,"fw蒼葉_通常_shock2");
//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000130a01">
"You're- So persistent&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE乱闘", 5000, 350, null);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵窓", 2001, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓/絵画像", 2000, -1330, -30, "cg/ev/l/evf02モルヒネ暗闇に佇む_l.jpg");
	Request("絵窓/絵画像", Smoothing);
	Zoom("絵窓/絵画像", 0, 1300, 1300, null, true);

	DrawDelete("絵板写", 500, 100, Dxl3, "slide_05_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I look at his face&, and the sight sends shivers down my 
spine&.

&.&.&.What's wrong with this guy's eyes?

They look blank&, just like a doll's&.

And when I take a better look at his face&, I realize 
something&.

Is this guy part of Dry Juice&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵窓*");
	Delete("絵窓/絵*");
	DrawDelete("絵板写", 100, 200, Dxl3, "slide_05_01_1", true);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000140a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
As I stand distracted&, he takes the chance to send a blow  to my shoulder&.

The intense pain travels as far as my fingertips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000150a01">
"&.&.&.That hurt&, you asshole!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演出大", 1000, 0, Middle, "cg/ev/l/ev900蒼葉蹴り汎用_l.jpg");
	CreateTextureSP("絵演出大弐", 900, Center, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	Wait(50);
	Move("絵演出大", 300, -1024, 0, Dxl3, false);
	FadeDelete("絵演出大", 200, null, true);

	Wait(200);
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Delete("絵演*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("絵色白", 100, Dxl3, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I reflexively turn and let loose a roundhouse kick&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I hit his stomach&, and he looks as if he's about to crumbleto the ground&.

The people here&.&.&.
Are they all Dry Juice?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_worry3",1150,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/5000160a01">
"&.&.&.Wah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	Wait(300);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ");
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
A fist comes at me from the side&, and I kick at it in a 
panic&.

{
	SetVolumeEX("SE乱闘", 5000, 0, null);
}
&.&.&.Right&. Where'd Clear go?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0650sl.nss"]

}
