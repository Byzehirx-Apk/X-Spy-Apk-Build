.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/LayoutInflaterCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    move-object v1, p1

    .local v1, "factory":Landroid/view/LayoutInflater$Factory2;
    sget-boolean v3, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v3, :cond_0

    .line 73
    :try_start_0
    const-class v3, Landroid/view/LayoutInflater;

    const-string/jumbo v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 74
    sget-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 82
    :cond_0
    sget-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 84
    :try_start_1
    sget-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 90
    :cond_1
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 76
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "LayoutInflaterCompatHC"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; inflation may have unexpected results."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    .line 76
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 85
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 86
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "LayoutInflaterCompatHC"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; inflation may have unexpected results."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    move-object v1, v2

    .line 170
    .local v1, "factory":Landroid/view/LayoutInflater$Factory;
    move-object v2, v1

    instance-of v2, v2, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v2, :cond_0

    .line 171
    move-object v2, v1

    check-cast v2, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object v2, v2, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    move-object v0, v2

    .line 173
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v0

    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .locals 9
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/LayoutInflaterFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    move-object v1, p1

    .local v1, "factory":Landroidx/core/view/LayoutInflaterFactory;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 112
    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 128
    :goto_1
    return-void

    .line 112
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 114
    :cond_1
    move-object v4, v1

    if-eqz v4, :cond_2

    new-instance v4, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    :goto_2
    move-object v2, v4

    .line 116
    .local v2, "factory2":Landroid/view/LayoutInflater$Factory2;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 118
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v4

    move-object v3, v4

    .line 119
    .local v3, "f":Landroid/view/LayoutInflater$Factory;
    move-object v4, v3

    instance-of v4, v4, Landroid/view/LayoutInflater$Factory2;

    if-eqz v4, :cond_3

    .line 122
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Landroid/view/LayoutInflater$Factory2;

    invoke-static {v4, v5}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 114
    .end local v2    # "factory2":Landroid/view/LayoutInflater$Factory2;
    .end local v3    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 125
    .restart local v2    # "factory2":Landroid/view/LayoutInflater$Factory2;
    .restart local v3    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_3
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 5
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/LayoutInflater$Factory2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    move-object v1, p1

    .local v1, "factory":Landroid/view/LayoutInflater$Factory2;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 142
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v3

    move-object v2, v3

    .line 143
    .local v2, "f":Landroid/view/LayoutInflater$Factory;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/LayoutInflater$Factory2;

    if-eqz v3, :cond_1

    .line 146
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Landroid/view/LayoutInflater$Factory2;

    invoke-static {v3, v4}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 152
    .end local v2    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v2    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
