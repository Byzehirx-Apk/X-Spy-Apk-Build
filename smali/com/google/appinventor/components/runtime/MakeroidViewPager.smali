.class public Lcom/google/appinventor/components/runtime/MakeroidViewPager;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/viewPager.png"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR:I


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

.field private NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

.field private OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

.field private z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "&HFF3F51B5"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_PRIMARY_COLOR:I

    .line 49
    const-string/jumbo v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_ACCENT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    .line 51
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    .line 52
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    .line 55
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

    .line 60
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    .line 64
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/tabs/TabLayout;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    .line 68
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 73
    move-object v2, v0

    new-instance v3, Landroidx/viewpager/widget/ViewPager;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 91
    move-object v2, v0

    new-instance v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    .line 93
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    .line 95
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;B)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 102
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 104
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsBackgroundColor(I)V

    .line 105
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsIndicatorColor(I)V

    .line 106
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsTextColor(I)V

    .line 107
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsActiveTextColor(I)V

    .line 108
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsMode(I)V

    .line 109
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ShowTabs(Z)V

    .line 110
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Visible(Z)V

    .line 111
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Width(I)V

    .line 112
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Height(I)V

    .line 114
    const-string/jumbo v2, "Makeroid View Pager"

    const-string/jumbo v3, "Makeroid View Pager Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 115
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1273
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1274
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 1279
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1281
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1285
    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1283
    const-string/jumbo v2, "Makeroid View Pager"

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1284
    :goto_1
    return-void

    .line 37
    :cond_0
    goto :goto_1
.end method


# virtual methods
.method public AddComponentToView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component to the view pager. The first added component will be the first visible component on the screen."
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    new-instance v3, Landroid/os/Handler;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 212
    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 211
    const-string/jumbo v3, "Makeroid View Pager"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 213
    goto :goto_0
.end method

.method public GetCurrentPage()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current selected visible page."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 188
    :goto_0
    return v0

    .line 186
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 187
    const-string/jumbo v2, "Makeroid View Pager"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 188
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 137
    const/4 v2, -0x2

    move v1, v2

    .line 139
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 140
    return-void
.end method

.method public PageSelected(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a page was selected."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PageSelected"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 145
    return-void
.end method

.method public RemoveAllTabs()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all tab\'s from view pager."
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 218
    return-void
.end method

.method public RemoveViewAt(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes a before added view from the view pager. If you want to delete the first page then use as position \'1\'."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-lez v2, :cond_0

    .line 152
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroidx/viewpager/widget/ViewPager;I)I

    move-result v2

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)V

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 167
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 156
    const-string/jumbo v2, "Makeroid View Pager"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 157
    goto :goto_0

    .line 160
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroidx/viewpager/widget/ViewPager;I)I

    move-result v2

    .line 161
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)V

    .line 162
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    goto :goto_0

    .line 163
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 164
    const-string/jumbo v2, "Makeroid View Pager"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 167
    goto :goto_0
.end method

.method public SelectPage(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Select a page which is then the active page. Use \'1\' to select the first page."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 175
    const-string/jumbo v2, "Makeroid View Pager"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 179
    goto :goto_0
.end method

.method public ShowTabs(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "experimental"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, you will see tabs above the view pager."
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

    .line 319
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 320
    move v2, v1

    if-eqz v2, :cond_1

    .line 321
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    .line 325
    :goto_1
    return-void

    .line 319
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 323
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    .line 325
    goto :goto_1
.end method

.method public ShowTabs()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

    move v0, v1

    return v0
.end method

.method public TabsActiveTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    move v0, v1

    return v0
.end method

.method public TabsActiveTextColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s text color for active tab\'s."
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    .line 264
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 265
    return-void
.end method

.method public TabsBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    move v0, v1

    return v0
.end method

.method public TabsBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s background color."
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 225
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    .line 226
    return-void
.end method

.method public TabsIndicatorColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    move v0, v1

    return v0
.end method

.method public TabsIndicatorColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s indicator color."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 238
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    .line 239
    return-void
.end method

.method public TabsMode()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public TabsMode(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "tabs_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Choose the mode used for the tab\'s. If no mode is specified, \'Scrollable\' is taken as \'Default\'. Use \'0\' for scrollable and \'1\' for fixed."
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 303
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 305
    :goto_0
    return-void

    .line 297
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 298
    goto :goto_0

    .line 300
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 301
    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public TabsTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    move v0, v1

    return v0
.end method

.method public TabsTextColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s text color for not selected tab\'s."
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    .line 251
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 252
    return-void
.end method

.method public Visible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

    if-eqz v2, :cond_1

    .line 350
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    .line 354
    :goto_1
    return-void

    .line 348
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 352
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    .line 354
    goto :goto_1
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v2, -0x2

    move v1, v2

    .line 130
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 131
    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public onOrientationChange()V
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:Z

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    .line 340
    goto :goto_0
.end method
