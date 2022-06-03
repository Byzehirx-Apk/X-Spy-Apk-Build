.class public abstract Lgnu/expr/ScopeExp;
.super Lgnu/expr/Expression;
.source "ScopeExp.java"


# static fields
.field static counter:I


# instance fields
.field decls:Lgnu/expr/Declaration;

.field protected frameSize:I

.field public id:I

.field last:Lgnu/expr/Declaration;

.field public outer:Lgnu/expr/ScopeExp;

.field private scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Expression;-><init>()V

    .line 316
    move-object v1, v0

    sget v2, Lgnu/expr/ScopeExp;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v4

    move v3, v4

    sput v3, Lgnu/expr/ScopeExp;->counter:I

    iput v2, v1, Lgnu/expr/ScopeExp;->id:I

    .line 113
    return-void
.end method

.method public static duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "oldDecl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "newDecl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, v2

    const/16 v4, 0x65

    move-object v5, v1

    const-string/jumbo v6, "duplicate declaration of \'"

    const-string/jumbo v7, "\'"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object v3, v2

    const/16 v4, 0x65

    move-object v5, v0

    const-string/jumbo v6, "(this is the previous declaration of \'"

    const-string/jumbo v7, "\')"

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static nesting(Lgnu/expr/ScopeExp;)I
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "sc":Lgnu/expr/ScopeExp;
    const/4 v2, 0x0

    move v1, v2

    .line 275
    .local v1, "n":I
    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 277
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v0, v2

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "sc":Lgnu/expr/ScopeExp;
    return v0
.end method


# virtual methods
.method public add(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-nez v2, :cond_0

    .line 41
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 44
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 45
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 46
    return-void

    .line 43
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "prev":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 54
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    iput-object v4, v3, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 55
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 62
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 63
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 64
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 65
    return-void

    .line 59
    :cond_1
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v4, v3, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 60
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public final addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    new-instance v3, Lgnu/expr/Declaration;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 231
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 232
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public final addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    new-instance v4, Lgnu/expr/Declaration;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v3, v4

    .line 243
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 244
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public final addDeclaration(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 253
    return-void
.end method

.method public countDecls()I
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    const/4 v3, 0x0

    move v1, v3

    .line 258
    .local v1, "n":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 258
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 260
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return v0
.end method

.method public countNonDynamicDecls()I
    .locals 6

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    const/4 v3, 0x0

    move v1, v3

    .line 266
    .local v1, "n":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 267
    move-object v3, v2

    const-wide/32 v4, 0x10000000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 269
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return v0
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v2, v0

    move-object v1, v2

    .line 123
    .local v1, "exp":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x0

    move-object v0, v2

    .line 126
    .end local v0    # "this":Lgnu/expr/ScopeExp;
    :goto_1
    return-object v0

    .line 125
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_1

    .line 126
    move-object v2, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    move-object v0, v2

    goto :goto_1

    .line 121
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v1, v2

    goto :goto_0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v2, v0

    move-object v1, v2

    .line 148
    .local v1, "exp":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    .line 149
    const/4 v2, 0x0

    move-object v0, v2

    .line 151
    .end local v0    # "this":Lgnu/expr/ScopeExp;
    :goto_1
    return-object v0

    .line 150
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_1

    .line 151
    move-object v2, v1

    check-cast v2, Lgnu/expr/ModuleExp;

    move-object v0, v2

    goto :goto_1

    .line 146
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v1, v2

    goto :goto_0
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;
    .locals 12

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "severity":C
    move-object v3, p3

    .local v3, "parser":Lgnu/expr/Compilation;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 202
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 203
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 213
    :goto_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0

    .line 204
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v6, v4

    iget-wide v6, v6, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v8, 0x10200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 206
    move-object v6, v4

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-wide v7, v7, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v9, -0x10201

    and-long/2addr v7, v9

    iput-wide v7, v6, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 209
    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 210
    .local v5, "newDecl":Lgnu/expr/Declaration;
    move-object v6, v4

    move-object v7, v5

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 211
    move-object v6, v5

    move-object v4, v6

    goto :goto_0
.end method

.method public getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 190
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 192
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 193
    move-object v3, v2

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v6, 0x10200

    or-long/2addr v4, v6

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    .line 195
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public getVarScope()Lgnu/bytecode/Scope;
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    move-object v1, v2

    .line 21
    .local v1, "sc":Lgnu/bytecode/Scope;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 22
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Scope;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/bytecode/Scope;-><init>()V

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    iput-object v3, v2, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 23
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 164
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 165
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 167
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    move-object v0, v3

    .line 171
    .end local v0    # "this":Lgnu/expr/ScopeExp;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :goto_1
    return-object v0

    .line 165
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    .restart local v2    # "decl":Lgnu/expr/Declaration;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 171
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move v3, p3

    .local v3, "namespace":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 177
    .local v4, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 179
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    move-object v5, v4

    move-object v0, v5

    .line 183
    .end local v0    # "this":Lgnu/expr/ScopeExp;
    :goto_1
    return-object v0

    .line 177
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 183
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public nestedIn(Lgnu/expr/ScopeExp;)Z
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "outer":Lgnu/expr/ScopeExp;
    move-object v3, v0

    move-object v2, v3

    .local v2, "sc":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 288
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 289
    const/4 v3, 0x1

    move v0, v3

    .line 291
    .end local v0    # "this":Lgnu/expr/ScopeExp;
    :goto_1
    return v0

    .line 286
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v2, v3

    goto :goto_0

    .line 291
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public popScope(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 33
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 32
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v3

    .line 35
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 36
    return-void
.end method

.method public remove(Lgnu/expr/Declaration;)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    const/4 v4, 0x0

    move-object v2, v4

    .line 92
    .local v2, "prev":Lgnu/expr/Declaration;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .local v3, "cur":Lgnu/expr/Declaration;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 94
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 96
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 97
    .line 101
    :goto_1
    return-void

    .line 99
    :cond_0
    move-object v4, v3

    move-object v2, v4

    .line 92
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 101
    :cond_1
    goto :goto_1
.end method

.method public remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "prev":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 106
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v4, v3, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 109
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 110
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 111
    :cond_0
    return-void

    .line 108
    :cond_1
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v4, v3, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "prev":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "newDecl":Lgnu/expr/Declaration;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    move-object v3, v4

    .line 75
    .local v3, "oldDecl":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 82
    :goto_0
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v5, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    move-object v5, v3

    if-ne v4, v5, :cond_0

    .line 84
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 85
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 86
    move-object v4, v2

    move-object v5, v0

    iput-object v5, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 87
    return-void

    .line 79
    .end local v3    # "oldDecl":Lgnu/expr/Declaration;
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    move-object v3, v4

    .line 80
    .restart local v3    # "oldDecl":Lgnu/expr/Declaration;
    move-object v4, v1

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method protected setIndexes()V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    const/4 v3, 0x0

    move v1, v3

    .line 300
    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 302
    move-object v3, v2

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    iput v4, v3, Lgnu/expr/Declaration;->evalIndex:I

    .line 300
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 304
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/expr/ScopeExp;->frameSize:I

    .line 305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/expr/ScopeExp;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method

.method public topLevel()Lgnu/expr/ScopeExp;
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v3, v0

    move-object v1, v3

    .line 136
    .local v1, "exp":Lgnu/expr/ScopeExp;
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v2, v3

    .line 137
    .local v2, "outer":Lgnu/expr/ScopeExp;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0

    .line 139
    .restart local v0    # "this":Lgnu/expr/ScopeExp;
    :cond_1
    move-object v3, v2

    move-object v1, v3

    .line 140
    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ScopeExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ScopeExp;
    return-object v0
.end method
