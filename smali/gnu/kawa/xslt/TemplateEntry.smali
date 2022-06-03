.class Lgnu/kawa/xslt/TemplateEntry;
.super Ljava/lang/Object;
.source "TemplateTable.java"


# instance fields
.field next:Lgnu/kawa/xslt/TemplateEntry;

.field pattern:Ljava/lang/String;

.field priority:D

.field procedure:Lgnu/mapping/Procedure;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/TemplateEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
