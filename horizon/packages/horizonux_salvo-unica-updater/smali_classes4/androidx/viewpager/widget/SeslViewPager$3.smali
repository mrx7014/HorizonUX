.class Landroidx/viewpager/widget/SeslViewPager$3;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/viewpager/widget/SeslViewPager;

    .line 105
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager$3;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$3;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    .line 109
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$3;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 110
    return-void
.end method
