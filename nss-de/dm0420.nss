//<continuation number="450">
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


scene dm0420.nss_MAIN
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
	#ev042ノイズＶＳ紅雀=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0420sl.nss";

}


scene dm0420.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -550, -478, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");;

	CreateSE("SE01","se環境_ガヤ_ざわつき01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

//覇：分割読み込み
	CreateTextureEX("絵背景消", 5000, Center, InBottom, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	CreateTextureEX("絵背景卯水", 1000, Center, InBottom, "cg/ev/ev010卯水_背景.jpg");
	CreateTextureEX("絵卯水梵字", 1005, Center, InBottom, "cg/ev/ev010卯水_効果梵字.png");
	CreateTextureEX("絵卯水", 1005, Center, InBottom, "cg/ev/ev010卯水_人物卯水のみ.png");

	Move("絵背景100", 500, -610, -478, Dxl1, false);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I go outside the shop&, I see a sweltering back alley 
that no one ever goes through&.

A crowd of people head inside&.

Both Noiz and I head that way as well&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);
	Delete("絵背景100");

	CreateSE("SE02","se環境_ガヤ_ざわつき01L");
	MusicStart("SE02",1000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_0", true);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000010a03">
"It's around here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵窓", 3010);//ナット名、優先度
	CreateTextureSP("絵窓/絵背景", 1000, Center, Middle, "cg/bg/m/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_m.jpg");
	CreateTextureSP("絵窓/絵立絵", 1500, Center, Middle, "cg/fu/x/fuAMウサギモドキ_通常_normal_x.png");
	CreateColorSP("絵窓/絵薄黒", 1100, "000000");

	SetShade("絵窓/絵背景", MEDIUM);

	Fade("絵窓/絵薄黒", 0, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013a]
When we enter the grim alleyway&, Noiz stands still&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵板写");
	CreateSE("SE01","se動物_足音_歩くウサギモドキ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OpenTateMask("絵窓",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち
	Wait(100);
	SetVolumeEX("SE01", 0, 0, null);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013b]
And before I had noticed&, there was a Bunny Cube in his 
hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：分割読み込み
	CreateTextureEXadd("絵卯水弐", 1015, Center, -320, "cg/ev/ev010卯水_人物卯水朧.png");
	RhymeDrawSet("卯水",2000,center,InBottom,"cg/ev/ev010卯水_人物卯水のみ.png");

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000020a01">
"Is that your Allmate?"

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000030a03">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CloseTateMask("絵窓",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
It's weird for him to have such a cute one&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000040a03">
"It'll start soon&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：分割読み込み
	CreateTextureEX("絵卯水参", 1014, Center, -320, "cg/ev/ev010卯水_人物卯水.png");
	CreateTextureEX("絵最後卯水", 1025, Center, -320, "cg/ev/ev010卯水.jpg");
	CreateTextureEXadd("絵卯水梵字光", 1100, Center, InBottom, "cg/ev/ev010卯水_効果梵字朧.png");
	CreateTextureEX("絵卯水梵字光弐", 1004, Center, InBottom, "cg/ev/ev010卯水_効果梵字朧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
A dim light starts to shine shortly enough&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreatePlainSP("絵板写", 5000);


	DeleteAllSt(0,true);

	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg101051_5_旧住民区通り裏路地06_l.jpg");


	Request("絵背景", Smoothing);
//	SetShade("絵背景", MEDIUM);


	SetVertex("絵卯水梵字*", 512, 1067);

	Zoom("絵卯水梵字", 0, 0, 0, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Move("絵背景", 0, @0, @-526, null, true);
	Rotate("絵卯水梵字*", 0, @-30, @0, @0, null,true);



	SetVolumeEX("SE*", 1000, 0, null);
	Move("絵背景", 1300, @0, @-50, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);
	Fade("絵卯水梵字", 1500, 1000, null, false);
	Wait(500);
	CreateSE("SE01","se擬音_ライム_顕現01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Zoom("絵卯水梵字", 200, 990, 990, Dxl3, false);
	Wait(190);
	Zoom("絵卯水梵字", 300, 1000, 1000, Dxl1, false);
	Wait(700);
	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景卯水", 0, 1000, Dxl1, false);
	DrawTransition("絵背景卯水", 500, 0, 1000, 1000, Dxl1, "cg/data/circle_17_00_0.png", false);
	Fade("絵卯水梵字光", 500, 500, Dxl1, false);

	Move("絵背景卯水", 1000, @0, @200, Dxl1, false);
	Rotate("絵卯水梵字*", 1000, @30, @0, @0, Dxl1,true);

	Wait(1000);

	CreateSE("SE01","se擬音_ライム_顕現01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵卯水梵字光", 500, 1000, Dxl1, false);
	RhymeDrawFade("卯水");
	Fade("絵卯水", 200, 1000, null, true);
	Fade("絵卯水梵字光弐", 500, 1000, Dxl3, false);
	Fade("絵卯水梵字光", 500, 0, Dxl1, true);

	Wait(300);

	Move("絵卯水", 1000, @0, @-30, Dxl1, true);


//	Wait(300);


	Move("絵卯水", 3000, @0, -320, AxlDxl, false);
	Move("絵卯水梵字*", 3000, @0, -320, AxlDxl, false);
	Move("絵背景卯水", 3000, @0, -320, AxlDxl, true);
	Delete("絵卯水梵字");
	Delete("絵卯水梵字光");

	CoilStartSet();
	Wait(500);



	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	MusicStart("SE01",0,700,0,1300,null,false);
	CoilStartFade();
	Fade("絵卯水弐", 300, 1000, Dxl1, false);
	Fade("絵卯水参", 300, 1000, Dxl1, true);
	Wait(50);
	Fade("絵卯水*", 1000, 0, Dxl1, false);
	Fade("絵最後卯水", 1000, 1000, Dxl1, true);
	Delete("絵卯水*");
	Delete("絵背景卯*");


	Move("絵最後卯水", 1500, @0, 0, Axl1, false);

	Wait(500);
	Fade("絵背景消", 1000, 1000, null, true);

	CoilIntoDelete();
	Delete("絵最後*");
	Delete("卯水*");
	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
A ring of light appears in the empty space&, and Usui shows from its ankles up&.

{
	SoundPlay("@dm009",0,450,true);
	CreateSE("SE01","se環境_ガヤ_荒くれ賛美01");
	MusicStart("SE01",0,700,0,1000,null,false);
}

The surrounding participants raise their voices in 
excitement&, and even more people come when they hear them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000050a03">
"Just like I said&."
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000060a01">
"&.&.&.Yeah&."

{	SetVolumeEX("SE*", 3000, 0, null);}
{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000070a03">
"Go up and take a look&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000080a01">
"I said I never liked this in the first place&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000090a03">
"Even just this much?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//覇：浮遊音
	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,700,0,1300,null,true);

	CreateTextureEX("絵背景", 5000, Center, Middle, "cg/bg/l/bg101051_5_旧住民区通り裏路地06_l.jpg");
	Move("絵背景", 3500, @-200, @0, AxlDxl, false);
	Fade("絵背景", 500, 1000, null, true);
	DeleteAllSt(0,true);

	Wait(1500);

	SetVolumeEX("SE*", 1000, 0, null);
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
Noiz slightly raises his eyebrows&. And then&, behind me&, my bag is being pulled down on by something on it&.

What was pulling on the strap was&.&.&. the Bunny Cube&.

When did it get there&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000100a01">
"You&.&.&.!"

{	St("C",740, @0,@0,"stノイズ_通常_smile2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000110a03">
"What will you do now?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
The audience crowds together&, and I hold tightly onto my 
bag; there's no way to escape anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ベニがかっ飛んできて、ウサギキューブとぶつかる

	DeleteFw();

	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,700,0,1800,null,false);

	Wait(600);
	SetVolumeEX("SE01", 500, 0, null);

	CreateSE("SE02","se人体_衝撃_叩く01");
	MusicStart("SE02",0,500,0,1500,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 150, 1000, Dxl3, true);
	DeleteAllSt(100,true);
	FadeDelete("絵色白", 150, Dxl3, true);

	Fw("fwAMウサギモドキ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm04/2000130c09">
"P!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_動作_掴む01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE04","se人体_衝撃_叩く02");
	MusicStart("SE04",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
At that moment&, something glides to my bag and hits the 
cube that's pulling down on it&.

The surrounding crowd is in a commotion - it's complete 
chaos&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 1005, -436, 0, "cg/bg/m/bg101051_5_旧住民区通り裏路地06_m.jpg");
	SetShade("絵背景霞", MEDIUM);

	Move("絵背景*", 500, @-100, @0, AxlDxl, false);

	FadeDelete("絵板写", 500, null, true);

	St("C",1740, @0,@0,"bu紅雀_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000140a02">
"Yo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
The one who picks my bag up is Koujaku&.

So the thing that hit Noiz's cube must've been Beni&.

The Beni-Shigure members are here too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000150a01">
"Koujaku&.&.&."

{	St("C",1740, @0,@0,"bu紅雀_通常_smile");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000160a02">
"Aoba&, how are you today? Still on delivery duty?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
While saying that&, Koujaku shoots a leering look Noiz's 
way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_cool2");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000170a02">
"Why are you here?"

{	St("ML",740, @-30,@0,"stノイズ_通常_normal");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000180a03">
"I have no reason to tell you&."

{	St("MR",740, @30,@0,"st紅雀_通常_cool");
	FadeSt("MR",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000190a02">
"Rhyme&, huh?"

{	St("ML",740, @-30,@0,"stノイズ_通常_normal2");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000200a03">
"I have the same question&. Why are you here&, anyway?
 Braindead Rib players like you would die in an instant
 in Rhyme&."

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm04/2000210e47">
"Whaddya' say!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_cool2");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000220a02">
"Stop that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku holds back his overexcited teammate&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_cool");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000230a02">
"Don't act like a little brat here&. You're going too far&."

{	St("ML",740, @-30,@0,"stノイズ_通常_normal");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000240a03">
"But he is a brat&."

{	St("MR",740, @30,@0,"st紅雀_通常_angry4");
	FadeSt("MR",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000250a02">
"Don't get carried away&."

{	St("ML",740, @-30,@0,"stノイズ_通常_normal3");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000260a03">
"Whatever&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_cool");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000270a02">
"Just talking to you makes me hate Rhyme even more&."

{	St("ML",740, @-30,@0,"stノイズ_通常_normal2");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000280a03">
"Go ahead&. No one cares about Rib anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
&.&.&.This somehow took a turn for the worst&.

Their serious attitude spills into the crowd&, and both 
Koujaku and Noiz's members begin to crowd together&.

Rib vs Rhyme&. They stand across and scowl at each other&, 
their patience almost drained dry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000290a01">
"Hey&, you two need to&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @-30,@0,"stノイズ_通常_cool2");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000300a03">
"You know&, your whole muscle and pride thing has been
 outdated for a while now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_cool2");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000310a02">
"Fighting in your head isn't anything special&. It's just
 your way of escaping the real world&."

{	St("ML",740, @-30,@0,"stノイズ_通常_normal3");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000320a03">
"It's hard to get through the head of someone with no
 brain&. No reason to keep on talking&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2000330a01">
"Hey&.&.&."

{	St("MR",740, @30,@0,"st紅雀_通常_cool");
	FadeSt("MR",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000340a02">
"I don't want to hear that from some bean sprout with a big
 head&."

{	St("ML",740, @-30,@0,"stノイズ_通常_normal2");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000350a03">
"I'm not a bean sprout&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_pride");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000360a02">
"Is that so? You look enough like one to me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
He's using that tone&.&.&. Like when he came into my room and we began to argue&.

Noiz keeps his mouth shut&, and Koujaku silently stares&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st紅雀_通常_angry");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000370a02">
"Aren't you 'Ruff Rabbit'? Mujina's Rhymer team? Looks like you made it all the way over here&."

{	St("MR",740, @30,@0,"st紅雀_通常_angry4");
	FadeSt("MR",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000380a02">
"You predict when and where Rhyme starts; are you happy
 with the small pennies you make out of that?"

{	St("ML",740, @-30,@0,"stノイズ_通常_normal");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000390a03">
"It's buisness&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @-30,@0,"stノイズ_通常_normal3");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000400a03">
"There's a lot of people around here that want that sort of information&."

{	St("ML",740, @-30,@0,"stノイズ_通常_angry");
	FadeSt("ML",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000410a03">
"So we arrange a few things&. We use our heads for different reasons than you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
Noiz and Koujaku glare at each other with a silent 
intensity&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク右", 2000, 0, 0, "ciスラッシュ_05_01", true, "ciスラッシュ_05_00z");
	CreateTextureSP("絵マスク右/絵演画像", 1010, -613, 254, "cg/ev/l/ev042ノイズＶＳ紅雀_l.jpg");
	Request("絵マスク右", Smoothing);
	Request("@絵マスク右枠", Smoothing);
	Request("絵マスク右/絵演画像", Smoothing);
	Zoom("絵マスク右", 0, 1050, 1050, null, true);
	Zoom("@絵マスク右枠", 0, 1050, 1050, null, true);
	Zoom("絵マスク右/絵演画像", 0, 1500, 1500, null, true);
	Rotate("絵マスク右", 0, 180, @0, 360, null, true);
	Rotate("@絵マスク右枠", 0, 180, @0, 360, null, true);

	Move("絵マスク右/絵演画像", 500, @0, @-100, Dxl1, false);
	DrawDelete("絵板写", 500, 100, null, "slide_02_01_0", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000420a02">
"Looks like I'll just have to kick your ass in one shot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク左", 2000, 0, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	CreateTextureSP("絵マスク左/絵演画像", 1010, -356, 230, "cg/ev/l/ev042ノイズＶＳ紅雀_l.jpg");
	Request("絵マスク左", Smoothing);
	Request("絵マスク左/絵演画像", Smoothing);
	Request("@絵マスク左枠", Smoothing);
	Zoom("絵マスク左", 0, 1050, 1050, null, true);
	Zoom("@絵マスク左枠", 0, 1050, 1050, null, true);
	Zoom("絵マスク左/絵演画像", 0, 1500, 1500, null, true);
	Rotate("絵マスク左", 0, 180, @0, 360, null, true);
	Rotate("@絵マスク左枠", 0, 180, @0, 360, null, true);

	Move("絵マスク左/絵演画像", 500, @0, @-100, Dxl1, false);
	DrawDelete("絵板写", 500, 100, null, "slide_02_01_0", true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000430a03">
"You're full of shit&, but I'll let you eat those words&.
 I'll beat you to a pulp&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se環境_ガヤ_荒くれ賛美01");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateSE("SE13","se環境_ガヤ_ざわつき01L");
	MusicStart("SE13",3000,500,0,1000,null,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/ev042ノイズＶＳ紅雀.jpg");

	FadeDelete("@絵マスク左枠",10,null);
	FadeDelete("@絵マスク右枠",10,null);
	FadeDelete("絵マスク枠*",10,null);

	Fade("絵背景弐", 10, 0, null, false);
	Move("絵マスク右",500,@1024,@0,Dxl1,false);

	Move("絵マスク左",500,@-1024,@0,Dxl1,true);

	CreateSE("SE12","se環境_ガヤ_荒くれ不満01");
	MusicStart("SE12",0,700,0,1000,null,true);

	Delete("絵背景弐");
	Delete("絵マスク*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0106]
The surrounding Ribsteez and Rhymers let out booming war 
cries&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Before I knew it&, I was able to see the Rhymers collected  around Usui watch two people fighting&.

But more people began to turn our way&.

More and more&.
What's going to happen next&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/2000440a02">
"I'll make sure that you can't open your mouth to make
 cheeky comments ever again&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2000450a03">
"Yeah&, right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
Koujaku keeps firing provocations at Noiz&, who is just 
taking them with a small smirk; he tilts his head and 
snorts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0420sl.nss"]

}
