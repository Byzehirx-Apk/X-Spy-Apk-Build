.class Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatDrawableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsldcInflateDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, p4

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object v6, v1

    move-object v7, v1

    .line 807
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 810
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;
    :goto_0
    return-object v0

    .line 808
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 809
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AsldcInflateDelegate"

    const-string/jumbo v7, "Exception while inflating <animated-selector>"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 810
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method
