.class public Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;
.super Ljava/lang/Object;
.source "RoomManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ies/live/sdk/chatroom/bl/h;->a(Landroid/os/Handler;JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/ss/android/ies/live/sdk/chatroom/bl/h;


# direct methods
.method constructor <init>(Lcom/ss/android/ies/live/sdk/chatroom/bl/h;JJII)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->f:Lcom/ss/android/ies/live/sdk/chatroom/bl/h;

    iput-wide p2, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->b:J

    iput-wide p4, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->c:J

    iput p6, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->d:I

    iput p7, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v4, 0xfda

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-wide v0, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->b:J

    iget-wide v2, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->c:J

    iget v4, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->d:I

    iget v5, p0, Lcom/ss/android/ies/live/sdk/chatroom/bl/h$15;->e:I

    invoke-static/range {v0 .. v5}, Lcom/ss/android/ies/live/sdk/chatroom/bl/g;->a(JJII)V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method