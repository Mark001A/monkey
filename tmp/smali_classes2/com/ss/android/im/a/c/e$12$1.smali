.class public Lcom/ss/android/im/a/c/e$12$1;
.super Ljava/lang/Object;
.source "SessionModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/im/a/c/e$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/im/a/c/e$12;


# direct methods
.method constructor <init>(Lcom/ss/android/im/a/c/e$12;Z)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/ss/android/im/a/c/e$12$1;->c:Lcom/ss/android/im/a/c/e$12;

    iput-boolean p2, p0, Lcom/ss/android/im/a/c/e$12$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0xaa5

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/im/a/c/e$12$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/im/a/c/e$12$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/im/a/c/e$12$1;->b:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ss/android/im/a/c/e$12$1;->c:Lcom/ss/android/im/a/c/e$12;

    iget-object v0, v0, Lcom/ss/android/im/a/c/e$12;->c:Lcom/ss/android/im/client/b/a;

    invoke-static {v0}, Lcom/ss/android/im/util/c;->a(Lcom/ss/android/im/client/b/a;)Lcom/ss/android/im/client/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/im/a/c/e$12$1;->c:Lcom/ss/android/im/a/c/e$12;

    iget-object v1, v1, Lcom/ss/android/im/a/c/e$12;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ss/android/im/client/b/a;->onSuccess(Ljava/lang/Object;)V

    .line 241
    :goto_1
    const-class v0, Lcom/ss/android/im/a/c/d;

    invoke-static {v0}, Lcom/ss/android/im/client/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/im/a/c/d;

    iget-boolean v1, p0, Lcom/ss/android/im/a/c/e$12$1;->b:Z

    iget-object v2, p0, Lcom/ss/android/im/a/c/e$12$1;->c:Lcom/ss/android/im/a/c/e$12;

    iget-object v2, v2, Lcom/ss/android/im/a/c/e$12;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/im/a/c/d;->b(ZLjava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/ss/android/im/a/c/e$12$1;->c:Lcom/ss/android/im/a/c/e$12;

    iget-object v0, v0, Lcom/ss/android/im/a/c/e$12;->c:Lcom/ss/android/im/client/b/a;

    invoke-static {v0}, Lcom/ss/android/im/util/c;->a(Lcom/ss/android/im/client/b/a;)Lcom/ss/android/im/client/b/a;

    move-result-object v0

    const/16 v1, -0xbb9

    invoke-static {}, Lcom/ss/android/im/util/c;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/im/client/b/a;->onError(ILjava/lang/Exception;)V

    goto :goto_1
.end method
