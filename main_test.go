package main

import (
	"testing"

	"github.com/linghaihui/go-gsc/util"
)

func Test_DB(t *testing.T) {
	if util.DB == nil {
		t.Error("数据库连接失败")
	} else {
		t.Log("数据库连接正常")
	}
}
