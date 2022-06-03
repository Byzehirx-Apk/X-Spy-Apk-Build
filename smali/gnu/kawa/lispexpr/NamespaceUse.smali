.class Lgnu/kawa/lispexpr/NamespaceUse;
.super Ljava/lang/Object;
.source "LispPackage.java"


# instance fields
.field imported:Lgnu/mapping/Namespace;

.field importing:Lgnu/mapping/Namespace;

.field nextImported:Lgnu/kawa/lispexpr/NamespaceUse;

.field nextImporting:Lgnu/kawa/lispexpr/NamespaceUse;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/NamespaceUse;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
