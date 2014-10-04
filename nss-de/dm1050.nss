//<continuation number="0">
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


scene dm1050.nss_MAIN
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
	#bg108011_1_北地区外れの通り=true;
	#bg401011_5_放棄区域地下通路=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1070.nss";

}


scene dm1050.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg108011_1_北地区外れの通り");
	FadeBG(0,true);

	SoundPlay("@dm006",0,450,true);

	Delete("上背景");
	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The marked area was at an entrance to an underground 
passageway a little off from the Northern District&, 
with a broken barricade in it&.

{	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);}
And Haga-san was there&, ready to hand over a remodeled 
type of stun gun to us in order to protect ourselves&.

He told us that this underground passageway used to be how
construction materials for Platinum Jail were transported&.

{	DeleteAllSt(200,true);}
Orginally&, Platinum Jail was planned to cover the entire 
island&, and the Old Resident District built a passage way 
to transport materials over&.

But the plans were put to a halt and the passageway was 
abandoned&.

Mostly everyone has forgotten about it&, but it's still a 
way into the gates of Platinum Jail&.

We made our way through the barricade and went down the 
rotting staircases&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg401011_5_放棄区域地下通路");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, -128, Middle, "cg/bg/l/bg401011_5_放棄区域地下通路_l.jpg");
	Fade("絵背景", 0, 1000, null, true);

	Move("絵背景", 2300, 0, @0, null, false);
	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	CreateSE("SE01","se人体_足音_一歩03");
	CreateSE("SE02","se人体_足音_一歩03");

	CreateSE("SE03","se人体_足音_一歩03");
	CreateSE("SE04","se人体_足音_一歩03");

	SoundEffect("SE02","SEWERPIPE");
	SoundEffect("SE04","SEWERPIPE");

	MusicStart("SE01",0,800,0,1000,null,false);
	MusicStart("SE02",0,800,0,1000,null,false);
	Wait(1500);
	FadeDelete("絵背景", 500, null, false);
	MusicStart("SE03",0,800,0,1000,null,false);
	MusicStart("SE04",0,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
The inside of the tunnel is pitch black&, and it seems to 
go on forever&.

We go along the long pathway and come to a staircase&. 
We climb it and end up in a place like nothing we've ever 
seen before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
A giant white gate towers before us&.

So this&.&.&. is the Platinum Jail gate&.

&.&.&.Is it really okay for us to continue on?

Maybe this really is a trap&.

We both felt the same way&, but that didn't stop our feet 
from carrying us forward&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);

//※次ファイル["dm1070.nss"]

}
