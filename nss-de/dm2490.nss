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


scene dm2490.nss_MAIN
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
	$GameName = "dm2500.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm2490.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

//嶋：ＢＧＭ引継ぎ注意
	SoundPlay("@dm015",0,450,true);

	FadeDelete("上背景", 0, null, true);

	CreateColorEX("絵色黒", 5000, "000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
{	Fade("絵色黒", 500, 1000, null, false);}
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 0, 1000, null, true);

	CreateColorSPover("絵擬似回想色", 4990, "624a2b");
	CreateTextureSPmul("絵擬似回想枠", 4990, Center, Middle, "cg/ef/effi回想01.jpg");

	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev239殺人マシーンノイズvs蒼葉.jpg");

	Fade("絵色黒", 800, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
If I hadn't used the power&, I then I couldn't have opened 
Noiz's eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev241うずくまるノイズ.jpg");
	Fade("絵色黒", 800, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
It was impossible for me to do alone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev233ノイズを抱き寄せる.jpg");
	Fade("絵色黒", 800, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010d]
So&.&.&. I'm fine with it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	Delete("絵擬似回想*");
	FadeDelete("絵色黒", 800, null, true);

{	St("C",740, @0,@0,"fuノイズ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000010a03">
"Hey&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Noiz stared at me with a worried face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"fuノイズ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000020a03">
"Are you okay?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000030a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuノイズ_通常_angry3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000040a03">
"&.&.&.I really made some trouble for you&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000050a01">
"Why did you end up like that?"

{	St("C",740, @0,@0,"fuノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000060a03">
"I was found by a white guard with a mask when I was
 looking for some supplies&. I tried to escape but he
 caught me&, then forced me to listen to some weird song&."

{	St("C",740, @0,@0,"fuノイズ_通常_angry3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000070a03">
"Then I lost consciousness&."

{	St("C",740, @0,@0,"fuノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000080a03">
"But&.&.&. you used that power on me&, didn't you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000090a01">
"&.&.&.&."

{	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000100a03">
"That's why I was able to regain my sanity&. Right?"

{	FwPro("fw蒼葉_通常_worry2",3000,"fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000110a01">
"Yeah&, but&.&.&. Ngh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreatePlainEX("絵板写", 2000);

//※頭痛レベル：４
$HALevel=4;
	HAFade(2000, 0,false);
	FadeFFR2("絵板写", 0,600, 200, 0, 0, 20,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
Again&.&.&.!

My heart starts to thump faster and faster and I shiver 
with every beat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どくんどくんと心臓の音
//※白蒼葉が見える
	CreateSE("SE21","se人体_心臓_鼓動01L");//あきゅん「ＳＥ：se人体_心臓_鼓動01」
	MusicStart("SE21",0,500,0,800,null,true);
	Request("SE21", Lock);

	CreateMaskEX("絵演白蒼葉", 0, 0, 0, "cg/data/slide_05_00_0.png", false);
	CreateTextureEX("絵演白蒼葉/絵演ＥＶ", 1100, Center, -80, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	MoveFFP1("@絵演白蒼葉/絵演ＥＶ",60000);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000120a01">
"Ugah&.&.&. Uh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);
	Fade("絵演白蒼葉/絵演ＥＶ", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//{	St("C",740, @0,@0,"fuノイズ_通常_angry");
//	FadeSt("C",200,true);}

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000130a03">
"Hey&, are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000140a01">
"&.&.&.Guuh&, Uaah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――――　Destroy everything　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　――――　Destroy!　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	FadeDelete("絵演白蒼葉/絵演ＥＶ", 2000, null, false);

//{	St("C",740, @0,@0,"fuノイズ_通常_shock");
//	FadeSt("C",200,true);}

	Fw("fwノイズ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/9000150a03">
"Hey&.&.&.!"

{	Fw("fw蒼葉_通常_pain");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/9000160a01">
"Guh&, aahhhh&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
My head&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm2500.nss"]

}
