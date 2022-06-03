.class public Landroidx/core/app/CoreComponentFactory;
.super Landroid/app/AppComponentFactory;
.source "CoreComponentFactory.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/CoreComponentFactory$CompatWrapped;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoreComponentFactory"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/AppComponentFactory;-><init>()V

    .line 86
    return-void
.end method

.method static checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/app/CoreComponentFactory$CompatWrapped;

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    check-cast v2, Landroidx/core/app/CoreComponentFactory$CompatWrapped;

    invoke-interface {v2}, Landroidx/core/app/CoreComponentFactory$CompatWrapped;->getWrapper()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 74
    .local v1, "wrapper":Ljava/lang/Object;, "TT;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v1

    move-object v0, v2

    .line 78
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .end local v1    # "wrapper":Ljava/lang/Object;, "TT;"
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/CoreComponentFactory;
    return-object v0
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/CoreComponentFactory;
    return-object v0
.end method

.method public instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProvider;

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/CoreComponentFactory;
    return-object v0
.end method

.method public instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/CoreComponentFactory;
    return-object v0
.end method

.method public instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/CoreComponentFactory;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Service;

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/CoreComponentFactory;
    return-object v0
.end method
