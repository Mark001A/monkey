.class public Lcom/ss/ugc/live/cocos2dx/model/LiveUser;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user id is not valid. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->constructUserInfo(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    return-void
.end method

.method private native constructUserInfo(J)J
.end method

.method private native setUserAvatarUrl(JLjava/lang/String;)V
.end method

.method private native setUserHonorIconUrl(JLjava/lang/String;)V
.end method

.method private native setUserHonorLevel(JI)V
.end method

.method private native setUserName(JLjava/lang/String;)V
.end method


# virtual methods
.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    return-wide v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/ss/ugc/live/cocos2dx/model/LiveUser;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->setUserAvatarUrl(JLjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setHonorIconUrl(Ljava/lang/String;)Lcom/ss/ugc/live/cocos2dx/model/LiveUser;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->setUserHonorIconUrl(JLjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setHonorLevel(I)Lcom/ss/ugc/live/cocos2dx/model/LiveUser;
    .locals 2

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->setUserHonorLevel(JI)V

    :cond_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/ss/ugc/live/cocos2dx/model/LiveUser;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/ugc/live/cocos2dx/model/LiveUser;->setUserName(JLjava/lang/String;)V

    :cond_0
    return-object p0
.end method
