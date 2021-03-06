package models

import (
	"sync"

	"github.com/eaciit/orm"
)

type MasterOrderType struct {
	sync.RWMutex
	orm.ModelBase `bson:"-" json:"-"`
	Id            string `bson:"_id" json:"id"`
	OrderTypeDesc string `bson:"OrderTypeDesc" json:"OrderTypeDesc"`
}

func (m *MasterOrderType) RecordID() interface{} {
	return m.Id
}

func (m *MasterOrderType) TableName() string {
	return "MasterOrderType"
}
