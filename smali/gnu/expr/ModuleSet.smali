.class public abstract Lgnu/expr/ModuleSet;
.super Ljava/lang/Object;
.source "ModuleSet.java"


# static fields
.field public static final MODULES_MAP:Ljava/lang/String; = "$ModulesMap$"


# instance fields
.field next:Lgnu/expr/ModuleSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleSet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract register(Lgnu/expr/ModuleManager;)V
.end method
