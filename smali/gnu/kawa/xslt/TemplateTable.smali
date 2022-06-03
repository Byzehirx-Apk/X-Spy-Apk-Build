.class public Lgnu/kawa/xslt/TemplateTable;
.super Ljava/lang/Object;
.source "TemplateTable.java"


# static fields
.field static final nullModeTable:Lgnu/kawa/xslt/TemplateTable;


# instance fields
.field entries:Lgnu/kawa/xslt/TemplateEntry;

.field name:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/xslt/TemplateTable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    invoke-direct {v1, v2}, Lgnu/kawa/xslt/TemplateTable;-><init>(Lgnu/mapping/Symbol;)V

    sput-object v0, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/TemplateTable;
    move-object v1, p1

    .local v1, "mode":Lgnu/mapping/Symbol;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xslt/TemplateTable;->name:Lgnu/mapping/Symbol;

    .line 17
    return-void
.end method

.method static getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    move-object v1, v0

    sget-object v2, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    if-ne v1, v2, :cond_0

    .line 22
    sget-object v1, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    move-object v0, v1

    .line 23
    .end local v0    # "name":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .restart local v0    # "name":Lgnu/mapping/Symbol;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public enter(Ljava/lang/String;DLgnu/mapping/Procedure;)V
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/TemplateTable;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "priority":D
    move-object v4, p4

    .local v4, "procedure":Lgnu/mapping/Procedure;
    new-instance v6, Lgnu/kawa/xslt/TemplateEntry;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lgnu/kawa/xslt/TemplateEntry;-><init>()V

    move-object v5, v6

    .line 31
    .local v5, "entry":Lgnu/kawa/xslt/TemplateEntry;
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/kawa/xslt/TemplateEntry;->procedure:Lgnu/mapping/Procedure;

    .line 32
    move-object v6, v5

    move-wide v7, v2

    iput-wide v7, v6, Lgnu/kawa/xslt/TemplateEntry;->priority:D

    .line 33
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/kawa/xslt/TemplateEntry;->pattern:Ljava/lang/String;

    .line 34
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    iput-object v7, v6, Lgnu/kawa/xslt/TemplateEntry;->next:Lgnu/kawa/xslt/TemplateEntry;

    .line 35
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    .line 36
    return-void
.end method

.method public find(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/TemplateTable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    move-object v2, v3

    .local v2, "entry":Lgnu/kawa/xslt/TemplateEntry;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 42
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xslt/TemplateEntry;->pattern:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xslt/TemplateEntry;->procedure:Lgnu/mapping/Procedure;

    move-object v0, v3

    .line 45
    .end local v0    # "this":Lgnu/kawa/xslt/TemplateTable;
    :goto_1
    return-object v0

    .line 40
    .restart local v0    # "this":Lgnu/kawa/xslt/TemplateTable;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xslt/TemplateEntry;->next:Lgnu/kawa/xslt/TemplateEntry;

    move-object v2, v3

    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method
